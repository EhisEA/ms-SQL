Create Database OutstandingStitches

Create table NewProduct
(ProductID char(6) primary key,
ProductName varchar(7) not null,
ProductDescription varchar(24) not null,
BrandID char(3) 
)

select *
from NewProduct n full outer join Category c
on n.CategoryID=c.CategoryID

alter table newproduct
add CategoryID char(3) constraint fcat foreign key (CategoryID)  references Category(CategoryID) 

insert into NewProduct
(CategoryID)
values('000123')

Create table Category
(CategoryID char(3) not null primary key,
Category char(20) unique not null,
)

alter table Category 
alter column Category char(17) not null


select * from NewProduct
select * from Category

insert into NewProduct
(ProductID, ProductName, ProductDescription, BrandID) 
Values ('000123', 'blazers','black and white stripes', '012')

insert into NewProduct
(ProductID, ProductName, ProductDescription, BrandID) 
Values ('000124', 'shirts', 'white with blue collar', '013')

select * from NewProduct
select * from Category

delete from NewProduct
where ProductDescription= 'blazers and white strips'

insert into Category
(CategoryID, Category)
values ('012', 'Suits and blazers')

insert into Category
(CategoryID, Category)
values ('013', 'long sleeve shirt')


--thi--
select *
from NewProduct

Alter table NewProduct
Drop Emp_location

insert into NewProduct(customer_phone, customer_location)
values('(+234)-654-345-4190',
Georgraphy::parse('POINT(54 67)'))

UPDATE TABLE newproduct
SET EMP_LOCATION IN Georgraphy::parse('POINT(54 67)'))
WHERE 

alter column emp_location SET DEFAULT 



