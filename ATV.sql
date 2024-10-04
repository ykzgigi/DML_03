Create database Funcionario_1e;

create table funcionario(
cod_func int primary key auto_increment not null,
nomefunc varchar (50) not null,
sexofunc varchar (50) not null,
bairrofunc varchar (100) not null,
salfunc decimal not null,
setorfunc varchar (50) not null 
);


insert into funcionario(nomefunc, sexofunc, bairrofunc, salfunc, setorfunc)
values ("Larissa Menezes", "F", "Jabaquara", 1200.00, "Marketing"),
("Selma Nunes", "F", "Grajaú", 3800.00, "Vendas"),
("Leandro Henrique", "M", "Socorro", 2950.00, "RH"),
("Amélia Jeremias", "F", "Socorro", 4200.00, "Marketing"),
("Cláudio Jorge Silva", "M", "Jabaquara", 1480.00, "Vendas"),
("Luciano Souza", "M", "Pedreira", 1000.00, "Vendas"),
("Gabriela Santos Nnunes", "F", "Jurubatuba", 4150.00, "Marketing"),
("Rafaela Vieira Jr", "F", "Jabaquara", 700.00, "Marketing"),
("Suzana Crispim", "F", "Grajaú", 5600.00, "Produção"),
("Sabrina Oliveira Castro", "F", "Pedreira", 2900.00, "Marketing"),
("Jarbas Silva Nunes", "M", "Jurubatuba", 5300.00, "Produção"),
("Ralf Borges", "M", "Jabaquara", 1600.00, "Marketing");


select sum(salfunc) AS Total_Salários
from funcionario;

select count(setorfunc) AS Total_Marketing
from Funcionario
where setorfunc = "marketing";

select setorfunc, avg (salfunc) AS Media_Salário
from funcionario
group by setorfunc
order by Media_Salário desc;

select count(bairrofunc) AS quant_func_socorro
from Funcionario
where salfunc < 3000.00 
AND bairrofunc = "Socorro";
	