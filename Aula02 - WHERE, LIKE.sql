/* create table pessoa (
	idPessoa int PRIMARY key AUTO_INCREMENT,
    nomePessoa varchar(200) not null,
    idade int not null
);

insert into pessoa (nomePessoa, idade) values ("Agnaldo",18);
insert into pessoa (nomePessoa, idade) values ("Willian",17);
insert into pessoa (nomePessoa, idade) values ("Thayla",18);
insert into pessoa (nomePessoa, idade) values ("Leonardo",20);
insert into pessoa (nomePessoa, idade) values ("Gustavo",19);
insert into pessoa (nomePessoa, idade) values ("Rafael",23);


select * from pessoa WHERE idade < 18;
select * from pessoa WHERE idade >= 30;


select * from pessoa WHERE nomePessoa = "Willian";

select * from pessoa WHERE nomePessoa like "a%";
select * from pessoa WHERE nomePessoa like "%a";
select * from pessoa WHERE nomePessoa like "%a%";

select * from pessoa WHERE nomePessoa like "%rr%";

select * from pessoa WHERE nomePessoa like "%rr%";
*/


select * from pessoa;