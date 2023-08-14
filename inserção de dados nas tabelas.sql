use ecommerce;
select * from clients;
insert into Clients (Fname, Minit, Lname, CPF, Adress) 
	   values('Maria','M','Silva', 12346789, 'rua silva de prata 29, Carangola - Cidade das flores'),
		     ('Matheus','O','Pimentel', 987654321,'rua alemeda 289, Centro - Cidade das flores'),
			 ('Ricardo','F','Silva', 45678913,'avenida alemeda vinha 1009, Centro - Cidade das flores'),
			 ('Julia','S','França', 789123456,'rua lareijras 861, Centro - Cidade das flores'),
			 ('Roberta','G','Assis', 98745631,'avenidade koller 19, Centro - Cidade das flores'),
			 ('Isabela','M','Cruz', 654789123,'rua alemeda das flores 28, Centro - Cidade das flores');
select * from product;
insert into product (Pname, classification_kids, category, avaliação, size) values
							  ('Fone de ouvido',false,'Eletrônico','4',null),
                              ('Barbie Elsa',true,'Brinquedo','3',null),
                              ('Body Carters',true,'roupa','5',null),
                              ('Microfone Vedo - Youtuber',False,'Eletrônico','4',null),
                              ('Sofá retrátil',False,'Móveis','3','3x57x80'),
                              ('Farinha de arroz',False,'Alimento','2',null),
                              ('Fire Stick Amazon',False,'Eletrônico','3',null);
select * from orders;							
insert into orders (idOrderClient, orderStatus, orderDescription, paymentCash) values 
							 (1, default,'compra via aplicativo',1),
                             (2,default,'compra via aplicativo',0),
                             (3,'Confirmado',null,1),
                             (4,default,'compra via web site',0);
select * from productorder;
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
						 (8,1,2,null),
                         (9,2,1,null),
                         (10,3,1,null);
                         
insert into productStorage (storageLocartion,quantity) values 
							('Rio de Janeiro',1000),
                            ('Rio de Janeiro',500),
                            ('São Paulo',10),
                            ('São Paulo',100),
                            ('São Paulo',10),
                            ('Brasília',60);
select * from storageLocation;						
insert into storageLocation (idLproduct, idLstorage, location) values
						 (8,2,'RJ'),
                         (9,6,'GO');
select * from supplier;				
insert into supplier (SocialName, CNPJ, contact) values 
							('Almeida e filhos', 123456789123456,'21985474'),
                            ('Eletrônicos Silva',854519649143457,'21985484'),
                            ('Eletrônicos Valma', 934567893934695,'21975474');
select * from productsupplier;
insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
						 (1,8,500),
                         (1,12,400),
                         (2,10,633),
                         (3,9,5),
                         (2,11,10);
select * from seller;						
insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values 
						('Tech eletronics', null, 123456789456321, null, 'Rio de Janeiro', 219946287),
					    ('Botique Durgas',null,null,123456783,'Rio de Janeiro', 219567895),
						('Kids World',null,456789123654485,null,'São Paulo', 1198657484);
                        
insert into productSeller (idPseller, idPproduct, prodQuantity) values 
						 (1,8,80),
                         (2,9,10);
                         
