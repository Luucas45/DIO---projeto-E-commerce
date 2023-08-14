-- selecione os produtos que não são para crianças tendo avaliação maior ou igual a 3
select * from product
where classification_kids = 0
having avaliação >=3;

-- quais foram os clientes que compraram via aplicativo
select concat(fname,' ',minit,' ',lname) as Cliente
from clients
inner join orders
on idclient = idorderclient;

-- informe qual o total de produtos estocados em cada localização 
select storagelocartion as Estado, sum(quantity)
from productstorage
group by Estado
order by sum(quantity) desc;
