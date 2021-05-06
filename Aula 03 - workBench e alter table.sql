create table Aluno
(
	idAluno int primary key auto_increment,
    nomeAluno varchar(50)
);

alter table Aluno add idadeAluno int;

alter table Aluno drop column idadeAluno;

alter table Aluno modify column nomeAluno varchar(80) not null;

alter table aluno change column nomeAluno nome_Aluno varchar(30);


create table Professor
(
	cpf int primary key,
    nomeProfessor varchar(50),
    idade int
);

create table Aluno
(
	idAluno int primary key auto_increment,
    nomeAluno varchar(50) not null,
    idade int not null
);

alter table aluno add fk_professor_cpf int;
alter table aluno 
add foreign key(fk_professor_cpf) references professor(cpf);

