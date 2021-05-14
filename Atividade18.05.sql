create table Estado
(
	idEstado int primary key auto_increment,
    nomeEstado varchar(50) not null
);
create table Municipio
(
	idMunicipio int primary key auto_increment,
    nomeMunicipio varchar(50) not null,
    fk_Estado int,
    foreign key (fk_Estado) references Estado(idEstado)
);

insert into estado (NomeEstado) values ("São Paulo");
insert into estado (NomeEstado) values ("Rio de Janeiro");

insert into Municipio (NomeMunicipio, fk_Estado) values ("hortolandia",1);
insert into municipio (NomeMunicipio, fk_Estado) values ("sumare",1);
insert into municipio (NomeMunicipio, fk_Estado) values ("Campinas",1);
insert into Municipio (NomeMunicipio, fk_Estado) values ("Petropolis",2);
insert into Municipio (NomeMunicipio, fk_Estado) values ("Rio de janeiro",2);

select
*
from municipio as m
inner join estado as e on e.idEstado = m.fk_Estado;

select
*
from municipio as m
left join estado as e on e.idEstado = m.fk_Estado;

select
*
from municipio as m
right join estado as e on e.idEstado = m.fk_Estado;






