import os

SECRET_KEY = 'MinhaPlaylist'

SQLALCHEMY_DATABASE_URI =\
    '{SGBD}://{usuario}:{senha}@{servidor}/{database}' .format(
        SGBD = 'mysql+mysqlconnector',
        usuario = 'root',
        senha = 'admin',
        servidor = 'localhost',
        database = 'playMusica'

    )

UPLOAD_PASTA = os.path.dirname (os.path.abspath(__file__)) + '/uploads'