create table medico(
	idMedico int primary key auto_increment,
    nomeMedico varchar(50) not null
);


create table pessoa(
	idPessoa int primary key auto_increment,
    nomePessoa varchar(50) not null
);

drop table medico_pessoa;

create table medico_pessoa (
	id int primary key auto_increment,
	fk_medico int not null,
    fk_pessoa int not null,
    data_consulta datetime default now(),
    foreign key (fk_medico) references medico(IdMedico),
    foreign key (fk_pessoa) references pessoa(idPessoa)
);



insert into medico (nomeMedico) values ("Silvia"), ("Jéssica") ;
select * from medico;

insert into pessoa (nomePessoa) values ("Samuel"), ("Thiago");

select * from pessoa;

insert into medico_pessoa (fk_medico, fk_pessoa) values (1,1);
insert into medico_pessoa (fk_medico, fk_pessoa) values (1,2);

select * from medico_pessoa;


create table medico_pessoa (
	fk_medico int not null,
    fk_pessoa int not null,
    primary key (fk_medico, fk_pessoa),
    data_consulta datetime default now(),
    foreign key (fk_medico) references medico(IdMedico),
    foreign key (fk_pessoa) references pessoa(idPessoa)
);
