create table estado
(
	idEstado int primary key auto_increment,
    nomeEstado varchar(50) not null
);

create table municipio
(
	idMunicipio int primary key auto_increment,
    nomeMunicipio varchar(50) not null,
    totalPopulacao float not null,
    fk_estado int,
    foreign key (fk_estado) references Estado(idEstado)
);

insert into municipio_v2 
ta ai
From Marcelo Gregorio to Everyone:  09:20 PM
mt gente boa esse prof
From ucb_unasp-ht_sis03a@educadventista.org to Everyone:  09:20 PM
create table municipio_v2(
	idMunicipio int primary key auto_increment,
    nomeMunicipio varchar(50) not null,
    totalPopulacao float not null,
    fk_estado int,
    foreign key (fk_estado) references estado (idEstado)
    );
    
insert into estado(nomeEstado) values("São paulo");
insert into estado(nomeEstado) values("Minas gerais");
 
 insert into municipio (nomeMunicipio, totalPopulacao, fk_estado) values ("Hortolândia", 200000, 1);
 insert into municipio (nomeMunicipio, totalPopulacao, fk_estado) values ("Sumaré", 100000, 1);
 insert into municipio (nomeMunicipio, totalPopulacao, fk_estado) values ("Campinas", 1000000, 1);
 insert into municipio (nomeMunicipio, totalPopulacao, fk_estado) values ("Monte Mor", 100000, 1);
 
 insert into municipio (nomeMunicipio, totalPopulacao, fk_estado) values ("Caldas", 20000, 2);
 insert into municipio (nomeMunicipio, totalPopulacao, fk_estado) values ("BH", 200000, 2);
 
 select m.nomeMunicipio, e.nomeEstado from municipio as m
 inner join estado as e on e.idEstado = m.fk_estado;
 
 select * from municipio as m
 inner join estado as e on e.idEstado = m.fk_estado;
 
 select count(*) from municipio as m
 inner join estado as e on e.idEstado = m.fk_estado;
 
 select count(*) from municipio as m
 inner join estado as e on e.idEstado = m.fk_estado
 where e.nomeEstado like "%Minas%";
 
select count(*) as quantidade, e.nomeEstado from municipio as m
inner join estado as e on e.idEstado = m.fk_estado
group by e.nomeEstado;

select count(*) as quantidade, e.nomeEstado from municipio as m
inner join estado as e on e.idEstado = m.fk_estado
group by e.nomeEstado 
order by e.nomeEstado;

select avg(m.totalPopulacao) as quantidade, e.nomeEstado from municipio as m
inner join estado as e on e.idEstado = m.fk_estado
group by e.nomeEstado 
order by e.nomeEstado;


 
 
 
 
