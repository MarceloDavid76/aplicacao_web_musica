from musica import db

#aqui sao criadas classes modelos para o banco de dados.

class Musica (db.Model):
    id_musica = db.Column(db.Integer, primary_key = True, autoincrement = True)
    nome_musica = db.Column(db.String(50), nullable = False)
    cantor_banda = db.Column (db.String(50), nullable = False)
    genero = db.Column(db.String (20), nullable = False)

    #o objetivo desse metodo é representar a classe para o publico, 
    def __repr__(self):
        return '<Name %r>' %self.name
    
class Usuario (db.Model):
    id_usuario = db.Column(db.Integer, primary_key = True, autoincrement = True)
    nome_usuario = db.Column(db.String(50), nullable = False)
    login_usuario = db.Column (db.String(20), nullable = False)
    senha_usuario = db.Column(db.String (255), nullable = False)

    def __repr__(self):
        return '<Name %r>' %self.name