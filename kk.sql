create table Persons(
	PersonID int primary key,
	LastName varchar(150),
	FirstName varchar(150),
	Age int
);
create table Orders(
	OrderID int, OrderNumber int, PersonID int,
	primary key (OrderID),
	FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

insert into Persons values(1,'Hansen','Ola',30);
insert into Persons values(2,'Svendson','Tove',23);
insert into Persons values(3,'Pettersen','Kari',20);

insert into Orders values(1,77895,3);
insert into Orders values(2,44678,3);
insert into Orders values(3,22456,2);
insert into Orders values(4,24562,1);
insert into Orders values(5,24572,3);

select OrderId from Orders where PersonID=1;

select OrderNumber from Orders where PersonID=2;