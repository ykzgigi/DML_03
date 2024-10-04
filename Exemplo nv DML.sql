CREATE DATABASE vendas_produtos_1e;

use vendas_produtos_1e;

create table vendas (
id_venda int auto_increment primary key not null,
produto varchar (100) not null,
quantidade int not null,
preco decimal (10,2) not null
);

insert into vendas(produto, quantidade, preco)
values ("Lamorghini", 13, 30000000.00),
("Ferrari", 11, 20000000.00),
("Fusca", 52, 300500.00),
("GTR", 14, 5000000.00),
("SUV", 33, 4000000.00),
("Mercedes", 20, 7000000.00),
("F1", 8, 40000000.00),
("Kwid", 20, 6000000.00),
("Celta", 40, 2500000.00),
("Ford", 5, 800000.00);





select * from vendas;

select count(*) AS Total_vendas
from vendas;

select sum(quantidade) AS Total_Produtos
from vendas;

select min(preco) AS Menor_preço
from vendas;

select max(preco) AS Maior_preço
from vendas;

select produto, count(*) AS Total_Vendas
from vendas
group by produto;

select produto, sum(quantidade) AS Total_produtos_vendas
from vendas
group by produto
having Total_produtos_vendas >50;

select avg(preco) AS Media_de_preço from vendas;

select produto, quantidade, preco
from vendas
order by preco asc;

select produto, quantidade, preco
from vendas
order by preco desc
limit 5;

select produto, preco,
     (select max(preco) from vendas)
from vendas;