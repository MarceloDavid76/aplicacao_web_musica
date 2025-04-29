create database playMusica;

use playMusica;

create table musica(
	id_musica int primary key auto_increment not null,
    nome_musica varchar(50) not null,
    cantor_banda varchar (50) not null,
    genero varchar (20) not null);
    
    select * from musica;
    
    select nome_musica, genero from musica;
    
    insert into musica( nome_musica, cantor_banda, genero)
    values ('Todavia me alegrarei', 'Samuel Messias', 'Gospel');
    
    select * from musica;
    
    select nome_musica, genero from musica;
    
    insert into musica( nome_musica, cantor_banda, genero)
    
    values ('O sol', 'Vitor Kley', 'Pop');
    
    insert into musica (nome_musica, cantor_banda, genero)
    values ('Cavalo de Troia', 'Mc Kevin', 'Funk'),
    ('Isis', 'Mc Kako', 'Funk'),
    ('Pai é quem cria','Tierry','Sertanejjo'),
    ('Lobo Guará','Hungria','Rep'),
    ('Meu abrigo','Mellin','popp');
    
    use playmusica;
    
    select * from musica where id_musica <= 5;
    
    select * from musica where id_musica >= 5;
    
    update musica set genero = 'Pop' where id_musica = 11;
    update musica set cantor_banda = 'Melim' where id_musica =11;
    
    select * from musica;
    
    delete from musica where id_musica = 7;
    /*
		Abaixo ficam os comandos da tabela de usuario
	*/
    create table usuario (
    id_usuario int primary key auto_increment not null,
    nome_usuario varchar (50) not null,
    login_usuario varchar (20) not null,
    senha_usuario varchar (255) not null);
    
    select * from usuario;
    
    insert into usuario (nome_usuario, login_usuario, senha_usuario)
    values ('David Vinicius', 'David', 'admin');
    insert into usuario (nome_usuario, login_usuario, senha_usuario)
    values ('Vilma Nunes','vilmanunes104','nunes');
    
    select * from usuario;
    
    insert into usuario (nome_usuario, login_usuario, senha_usuario)
    values ('David Oliveira','david','oliveira');
    
    truncate table usuario;
    
    alter table usuario 
    add unique (login_usuario);
    
    insert into usuario (nome_usuario, login_usuario, senha_usuario)
    values ('David Vinicius','david','admin'),
    ('Vilma Nunes','vilmanunes104','nunes');
    
    select * from usuario;
    
	insert into usuario (nome_usuario, login_usuario, senha_usuario)
    values ('David Oliveira','david2','oliveira');
    
    delete from usuario where id_usuario = 4;
    
    alter table usuario
    modify senha_usuario varchar (255) not null;