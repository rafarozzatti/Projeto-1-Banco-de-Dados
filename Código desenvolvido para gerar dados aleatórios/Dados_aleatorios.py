from faker import Faker
import random
import mysql.connector

fake = Faker()

# Configurações do banco de dados
db_config = {
    'host': 'localhost',
    'user': 'usuario',
    'password': 'senha',
    'database': 'streaming_musica'
}

# Conectando ao banco de dados
db = mysql.connector.connect(**db_config)
cursor = db.cursor()

# Função para gerar dados
def gerar_dados():
    # Gerando artistas aleatórios
    for _ in range(10):
        nome = fake.name()
        data_nascimento = fake.date_of_birth()
        cursor.execute("INSERT INTO Artistas (nome, data_nascimento) VALUES (%s, %s)", (nome, data_nascimento))

    # Gerando usuários aleatórios
    for _ in range(10):
        nome = fake.name()
        email = fake.email()
        data_registro = fake.date_this_year()
        cursor.execute("INSERT INTO Usuarios (nome, email, data_registro) VALUES (%s, %s, %s)", (nome, email, data_registro))

    # Gerando discos e músicas
    for _ in range(10):
        titulo_disco = fake.sentence(nb_words=3)
        data_lancamento = fake.date()
        artista_id = random.randint(1, 10)
        cursor.execute("INSERT INTO Discos (titulo, data_lancamento, artista_id) VALUES (%s, %s, %s)", (titulo_disco, data_lancamento, artista_id))
        disco_id = cursor.lastrowid

        # Gerando músicas para cada disco
        for _ in range(random.randint(5, 10)):
            titulo_musica = fake.sentence(nb_words=2)
            duracao = random.randint(120, 360)
            cursor.execute("INSERT INTO Musicas (titulo, duracao, disco_id) VALUES (%s, %s, %s)", (titulo_musica, duracao, disco_id))

    # Gerando playlists e associando músicas aleatoriamente
    for _ in range(10):
        titulo_playlist = fake.sentence(nb_words=2)
        usuario_id = random.randint(1, 10)
        cursor.execute("INSERT INTO Playlists (titulo, usuario_id) VALUES (%s, %s)", (titulo_playlist, usuario_id))
        playlist_id = cursor.lastrowid

        # Relacionando músicas com playlists
        for _ in range(random.randint(5, 10)):
            musica_id = random.randint(1, 50)  # Assume que existem até 50 músicas inseridas
            cursor.execute("INSERT INTO Playlist_Musicas (playlist_id, musica_id) VALUES (%s, %s)", (playlist_id, musica_id))

    db.commit()

# Executando a função para gerar os dados
if __name__ == "__main__":
    try:
        gerar_dados()
        print("Dados inseridos com sucesso!")
    except mysql.connector.Error as err:
        print(f"Erro: {err}")
        db.rollback()
    finally:
        cursor.close()
        db.close()
