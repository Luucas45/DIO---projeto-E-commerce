create database ecommerce;
use  ecommerce;

create table clients(
		idclient int auto_increment primary key,
        Fname varchar(10),
        Minit char(3),
        Lname varchar(20),
        CPF char(11) unique not null,
        Adress varchar (225)
) auto_increment = 1 ;

create table product(
		idproduct int auto_increment primary key,
        Pname varchar(255) not null,
        Classification_kids bool default false,
        category enum('eletrônico','roupa','brinquedo','alimento','móveis') not null,
        avaliação float default 0,
        size varchar(10)
) auto_increment = 1 ;

create table payments(
		idclient int,
        idpayment int,
        typepayment enum('boleto','cartão','dois cartões'),
        limitavailable float,
        primary key(idclient, idpayment),
        foreign key (idclient) references clients(idclient)
);

create table orders(
		idorder int auto_increment primary key,
        idOrderClient int,
        orderstatus enum('cancelado','confirmado','em processamento') default 'em processamento',
        orderdescription varchar (255),
        paymentcash boolean default false,
        foreign key (idOrderClient) references clients(idclient)
) auto_increment = 1 ;

create table productstorage(
		idprodstorage int auto_increment primary key,
        storagelocartion varchar(255),
        quantity int default 0
) auto_increment = 1 ;

create table supplier(
		idsupplier int auto_increment primary key,
        socialname varchar(255) not null,
        CNPJ char(15) not null unique,
        contact char(11) not null
) auto_increment = 1 ;

create table seller(
		idseller int auto_increment primary key,
        socialname varchar(255) not null,
        abstname varchar(255),
        CNPJ char(15) unique,
        CPF char(9) unique,
        location varchar(255),
        contact char(11) not null
) auto_increment = 1 ;

create table productseller(
		idPseller int,
        idPproduct int,
        prodquantity int default 1,
        primary key(idPseller,idPproduct),
        foreign key (idPseller) references seller(idseller),
        foreign key (idPproduct) references product(idProduct)
);

create table productorder(
		idPOproduct int,
        idPOorder int,
        poQuantity int default 1,
        poStatus enum('disponivel','sem estoque') default 'disponivel',
        primary key(idPOproduct,idPOorder),
        foreign key (idPOproduct) references product(idproduct),
        foreign key (idPOorder) references orders(idorder)
);

create table storagelocation(
		idLproduct int,
        idLstorage int,
        location varchar(255) not null,
        primary key (idLproduct, idLstorage),
        foreign key (idLproduct) references product(idproduct),
        foreign key (idLstorage) references productstorage(idprodstorage)
);

create table productsupplier(
		idPSsupplier int,
        idPSproduct int,
        quantity int not null,
        primary key (idPSsupplier, idPSproduct),
        foreign key (idPSsupplier) references supplier(idsupplier),
        foreign key (idPSproduct) references product(idproduct)
);

show tables







        
        
        





