create table Artista
(
	idArtista int primary key auto_increment,
    nacionalidade varchar(50) not null,
    nome varchar(200) not null
);
create table Obra
(
	idObra int primary key auto_increment,
    titulo varchar(200) not null ,
    dataAquisicao date not null,
    dimensoes varchar(100) not null,
    fkArtista int not null,
    foreign key(fkArtista) references Artista(idArtista)
);

insert into Artista(nacionalidade, nome) values ("Brasileiro","Agnaldo");
insert into Artista(nacionalidade, nome) values ("Argentino", "Willian");
insert into Artista(nacionalidade, nome) values ("Angolano", "Robson");
insert into Artista(nacionalidade, nome) values ("Canadense", "Thayla");

insert into Obra(titulo, DataAquisicao, dimensoes, fkArtista) values ("Teste1", '2002-07-19',"TESTE1", 2);
insert into Obra(titulo, DataAquisicao, dimensoes, fkArtista) values ("Teste2", '2009-07-09',"TESTE2", 3);
insert into Obra(titulo, DataAquisicao, dimensoes, fkArtista) values ("Teste3", '2004-12-06',"TESTE3", 4);
insert into Obra(titulo, DataAquisicao, dimensoes, fkArtista) values ("Teste4", '2021-04-30',"TESTE4", 5);

select * from Obra;
select * from Artista;

