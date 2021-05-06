create table Aluno
(
	idAluno int primary key auto_increment,
    nomeAluno varchar(50)
);

alter table Aluno add idadeAluno int;

alter table Aluno drop column idadeAluno;

alter table Aluno modify column nomeAluno varchar(80) not null;

alter table aluno change column nomeAluno nome_Aluno varchar(30);

