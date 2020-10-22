create database testbd;

create table first(
	id int,
	name varchar(150),
	age int
);

insert into first values(16101077,'Onik',21);
insert into first values(16101083,'Shahin',21);
insert into first values(16101087,'Zahid',21);
insert into first values(16101093,'Tanvir',21);
insert into first values(16101094,'Piyl',21);

delete from first;

select * from first;

select distinct min(id) from first;

select age as AGE from first where id=16101093 or name='Onik';

update first set age=22 where id=16101077; 