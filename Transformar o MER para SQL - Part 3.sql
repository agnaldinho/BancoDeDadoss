create table professor
(
	CPF int primary key,
    nome varchar(50) not null,
    idade int not null
);
create table aluno
(
	nome varchar(50) not null,
    idade int not null,
    ID_aluno int primary key auto_increment,
    nome_do_responsavel varchar(50) not null,
    fk_Professor_CPF int,
    foreign key(fk_Professor_CPF) references professor(CPF)
);
create table disciplina
(
	nome_da_disciplina varchar(50) not null,
    id_disciplina int primary key auto_increment
);
create table frequenta
(
	fk_aluno_ID_aluno int,
	fk_disciplina_ID_disciplina int,
	foreign key(fk_aluno_ID_aluno) references aluno(id_aluno),
    foreign key(fk_disciplina_ID_disciplina) references disciplina(id_disciplina)
);

insert into professor(cpf, nome, idade) values (39939203, "Alciomar", 39);
insert into professor(cpf, nome, idade) values (54939494, "Jose", 62);
insert into professor(cpf, nome, idade) values (48484939, "Antonio", 42);

insert into aluno(nome,idade,nome_do_responsavel,fk_Professor_CPF) values ("Agnaldo junior",18,"Agnaldo",39939203);
insert into aluno(nome,idade,nome_do_responsavel,fk_Professor_CPF) values ("Willian",19,"Augusto",54939494);
insert into aluno(nome,idade,nome_do_responsavel,fk_Professor_CPF) values ("Thayla",17,"Rose",48484939);

insert into disciplina(nome_da_disciplina) values ("Banco de dados");
insert into disciplina(nome_da_disciplina) values ("Programação Orientada à Objetos");
insert into disciplina(nome_da_disciplina) values ("Matematica computacional");

insert into frequenta(fk_aluno_ID_aluno, fk_disciplina_ID_disciplina) values (5,1);
insert into frequenta(fk_aluno_ID_aluno, fk_disciplina_ID_disciplina) values (6,2);
insert into frequenta(fk_aluno_ID_aluno, fk_disciplina_ID_disciplina) values (7,3);

select 
* 
from aluno as a
inner join professor as p on p.cpf = a.fk_Professor_CPF;
select * from disciplina;
select * from frequenta;