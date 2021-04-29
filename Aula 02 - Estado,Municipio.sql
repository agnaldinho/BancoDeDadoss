create table Estado (
    IdEstado int PRIMARY key AUTO_INCREMENT,
    NomeEstado varchar(50) not null
);


create table municipio (
    IdMunicipio int PRIMARY key AUTO_INCREMENT,
    NomeMunicipio varchar(50) not null,
    fk_estado_IdEstado int not null,
    FOREIGN key(fk_estado_IdEstado) REFERENCES Estado(IdEstado)
);



insert into estado (NomeEstado) values ("São Paulo");
insert into estado (NomeEstado) values ("Rio de Janeiro");


select * from estado;




insert into municipio (NomeMunicipio, fk_estado_IdEstado) values ("Hortolândia",1);
insert into municipio (NomeMunicipio, fk_estado_IdEstado) values ("Sumaré",1);
insert into municipio (NomeMunicipio, fk_estado_IdEstado) values ("Campinas",1);
insert into municipio (NomeMunicipio, fk_estado_IdEstado) values ("Rio de Janeiro",2);
insert into municipio (NomeMunicipio, fk_estado_IdEstado) values ("Petrópolis",2);


select * from municipio;