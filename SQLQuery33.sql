create table Persons1(
	PersonIiD int primary key,
	LastName varchar(150),
	FirstName varchar(150),
	Age int
);
create table Orders1(
	OrderID int, OrderNumber int, PersonID int,
	primary key (OrderID),
	FOREIGN KEY (PersonID) REFERENCES Persons1(PersonIiD)
);

insert into Persons1 values(1,'Hansen','Ola',30);
insert into Persons1 values(2,'Svendson','Tove',23);
insert into Persons1 values(3,'Pettersen','Kari',20);

insert into Orders1 values(1,77895,3);
insert into Orders1 values(2,44678,3);
insert into Orders1 values(3,22456,2);
insert into Orders1 values(4,24562,1);
insert into Orders1 values(5,24572,3);

select OrderId from Orders1 where PersonID=1;

select OrderNumber from Orders1 where PersonID=3;