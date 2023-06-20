						
                        #Foreign Key Related 

use uma;
create table Parent(
ID int not null Primary Key auto_increment, 
Occupation varchar(10), 
Sal int);

insert into Parent(ID, occupation, Sal) values(20022301,'Architect', 150000);
insert into Parent( occupation, Sal) values('Doc', 200000);
select * from Parent;
select count(*) from parent; 
drop table Parent;


create table Child(
Town varchar(10), 
Company varchar(10), 
EMPID int not null,
Foreign Key(EMPID) REFERENCES Parent(ID));

insert into Child(Town, Company,EMPID) values('Hyderabad', 'Lodha', last_insert_id());
insert into Child(Town, Company, EMPID) values('Vizag', 'Apollo', last_insert_id());

select * from Child;
drop table child;





						#Concatenation Related


create table A(
ID int not null auto_increment primary key, 
DOB varchar(10),
Person varchar(10),
UniqueNum varchar(20)
);

set @@auto_increment_offset = 9;
set @@auto_increment_increment = 9;

insert into A(DOB, Person, UniqueNum) values('220587', 'bob', concat(DOB,ID)); 
insert into A(DOB, Person, UniqueNum) values('070888', 'run', concat(DOB,ID));

select * from A;
drop table A;







create table B(
ID int not null auto_increment primary key, 
DOB varchar(10),
Person varchar(10)
);

set @@auto_increment_offset = 7;
set @@auto_increment_increment = 9;

insert into B(DOB, Person) values('220587', 'bob');
insert into B(DOB, Person) values('070888', 'run');
select *, concat(DOB,ID) as UniqueNum from B; 

select * from B;
drop table B;