create table estado
(
	idEstado int primary key auto_increment,
    nomeEstado varchar(50)
);

create table municipio
(
	idMunicipio int primary key auto_increment,
    nomeMunicipio varchar(50) not null,
    fk_idEstado int,
    foreign key (fk_idEstado) references estado(idEstado)
);

insert into estado (NomeEstado) values ("São Paulo");
insert into estado (NomeEstado) values ("Rio de Janeiro");
insert into estado (NomeEstado) values ("Espirito santo");
insert into estado (NomeEstado) values ("Minas gerais");
DELETE FROM estado WHERE idEstado = '4';
insert into Municipio (NomeMunicipio, fk_idEstado) values ("hortolandia",1);
insert into municipio (NomeMunicipio, fk_idEstado) values ("sumare",1);
insert into municipio (NomeMunicipio, fk_idEstado) values ("Rio de janeiro",2);
insert into Municipio (NomeMunicipio, fk_idEstado) values ("Petropolis",2);
insert into municipio (NomeMunicipio) values ("Ouro preto");

select 
m.idMunicipio, 
m.nomeMunicipio, 
fk_idEstado, 
e.idEstado,
e.nomeEstado
from municipio as m
inner join estado as e on e.idEstado = m.fk_idEstado;

select 
*
from municipio as m
inner join estado as e on e.idEstado = m.fk_idEstado;

select 
*
from municipio as m
left join estado as e on e.idEstado = m.fk_idEstado;

select 
*
from municipio as m
right join estado as e on e.idEstado = m.fk_idEstado;

select 
*
from municipio as m
join estado as e on e.idEstado = m.fk_idEstado;

