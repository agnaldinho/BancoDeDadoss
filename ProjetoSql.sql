create table sala
(
	id_sala int primary key auto_increment,
    nome_sala varchar(50) not null
);
create table turma
(
	id_turma int primary key auto_increment,
    nome_turma varchar(50) not null,
	FK_ID_Sala int,
    foreign key(FK_ID_Sala) references sala(id_sala)
);
create table aluno
(
	ID_Aluno int primary key auto_increment,
    Nome_Aluno varchar(50) not null,
    idade int not null,
    FK_ID_Turma int,
    foreign key(FK_ID_Turma) references turma(id_turma)
);
create table disciplinas
(
	ID_Disciplina int primary key auto_increment,
    Nome_Disciplinas varchar(50)
);
create table aulas
(
	FK_ID_Disciplina int,
    FK_ID_Aluno int,
    foreign key(FK_ID_Disciplina) references Disciplinas(ID_Disciplina),
    foreign key(FK_ID_Aluno) references Aluno(ID_Aluno)
);
create table professor
(
	ID_Professor int primary key auto_increment,
    Nome_Professor varchar(50) not null,
    CPF varchar(11) not null,
    FK_ID_Disciplina int,
    foreign key(FK_ID_DISCIPLINA) references disciplinas(id_disciplina)
);
create table departamento
(
	ID_Departamento int primary key auto_increment,
    Nome_Departamento varchar(50) not null
);
create table escola
(
	ID_Escola int primary key auto_increment,
    Nome_Escola varchar(50) not null,
    Endereco varchar(100) not null,
    FK_ID_Departamento int,
    foreign key(FK_ID_Departamento) references departamento(ID_Departamento)
);
create table Escola_Professor
(
	FK_ID_Escola int,
    FK_ID_Professor int,
    foreign key(FK_ID_Escola) references Escola(ID_Escola),
    foreign key(FK_ID_Professor) references Professor(ID_Professor)
);

insert into sala(Nome_sala) values ("Sala - 1");
insert into sala(Nome_sala) values ("Sala - 2");
insert into sala(Nome_sala) values ("Sala - 3");

insert into turma(nome_turma, FK_ID_Sala) values ("1 - A", 1);
insert into turma(nome_turma, FK_ID_Sala) values ("1 - B", 2);
insert into turma(nome_turma, FK_ID_Sala) values ("1 - C", 3);

insert into aluno(nome_aluno, idade, FK_ID_Turma) values ("Agnaldo", 18,1);
insert into aluno(nome_aluno, idade, FK_ID_Turma) values ("Guilherme", 22,2);
insert into aluno(nome_aluno, idade, FK_ID_Turma) values ("Willian", 19,3);

insert into Disciplinas(Nome_disciplinas) values ("Programação Orientada à Objetos");
insert into Disciplinas(Nome_disciplinas) values ("Banco de Dados");
insert into Disciplinas(Nome_disciplinas) values ("Matematica computacional");

insert into Aulas(FK_ID_Disciplina, FK_ID_Aluno) values (1,1);
insert into Aulas(FK_ID_Disciplina, FK_ID_Aluno) values (2,2);
insert into Aulas(FK_ID_Disciplina, FK_ID_Aluno) values (3,3);

insert into professor(Nome_Professor, CPF, FK_ID_Disciplina) values ("Jose", "555-555", 1);
insert into professor(Nome_Professor, CPF, FK_ID_Disciplina) values ("Rose", "666-666", 2);
insert into professor(Nome_Professor, CPF, FK_ID_Disciplina) values ("Daniel", "777-777", 3);

insert into Departamento(Nome_departamento) values ("Departamento - 1");
insert into Departamento(Nome_departamento) values ("Departamento - 2");
insert into Departamento(Nome_departamento) values ("Departamento - 3");

insert into escola(Nome_escola, endereco, FK_ID_Departamento) values ("Escola 1","Rua treze, nº409",1);
insert into escola(Nome_escola, endereco, FK_ID_Departamento) values ("Escola 1","Rua sla, nº321",2);
insert into escola(Nome_escola, endereco, FK_ID_Departamento) values ("Escola 1","Rua pero, nº123",3);

insert into escola_professor(FK_ID_Escola, FK_ID_Professor) values (1,1);
insert into escola_professor(FK_ID_Escola, FK_ID_Professor) values (2,2);
insert into escola_professor(FK_ID_Escola, FK_ID_Professor) values (3,3);

select * from aluno; 
/*Adicionando uma nova coluna*/
alter table aluno add column Media_Semestral float;
/*Inserindo um novo aluno*/
insert into aluno(nome_aluno, idade, FK_ID_Turma) values ("Augusto", 19,3);
/*Deletando e recupendo o registro*/
delete from aluno where id_aluno = 4;
rollback;
/*Deletando o registro*/
delete from aluno where id_aluno = 4;
commit;

update aluno set media_semestral = 8 where id_aluno = 1;
update aluno set media_semestral = 9 where id_aluno = 2;
update aluno set media_semestral = 7 where id_aluno = 3;

select * from professor where Nome_Professor like "Ro%";

select count(id_aluno) from aluno;

select avg(media_semestral) from aluno;

select sum(Media_semestral) from aluno;

select * from aluno where media_semestral between 5 and 8;

select * from aluno where Nome_Aluno not in ("Guilherme") or ("Jose augusto");

select * from professor order by nome_professor desc;

select Nome_aluno, count(media_semestral) from aluno group by nome_aluno;

select * from professor as p
inner join disciplinas as d on d.id_disciplina = p.FK_ID_Disciplina;


