-- Exercise 1
Create Table Salesman(
salesman_id int,
name nvarchar(50),
city varchar(30),
commission float

)

Insert Into Salesman(salesman_id, name, city, commission) Values (5001, 'James Hoog','New York', 0.15)
Insert Into Salesman(salesman_id, name, city, commission) Values (5002, 'Nail Knite', 'Paris', 0.13)
Insert Into Salesman(salesman_id, name, city, commission) Values (5005, 'Pit Alex', 'London', 0.11)
Insert Into Salesman(salesman_id, name, city, commission) Values (5006, 'Mc Lyon', 'Paris', 0.14)
Insert Into Salesman(salesman_id, name, city, commission) Values (5007, 'Paul Adam', 'Rome', 0.13)
Insert Into Salesman(salesman_id, name, city, commission) Values (5003, 'Lauson Hen', 'San Jose', 0.12)

Select * From Salesman

-- Exercise 2

Select 'This is SQL Exercise, Practice and Solution' as Displayed_String

-- Exercise 3


SELECT salesman_id as '1', name as '2', city as '3' from Salesman
  WHERE salesman_id between 5001 and 5003

-- Exercise 4

Select 10 + 15 as sum

-- Exercise 5

Select 10 + 10 / 5 - 1 as Arithmetic_Expression

-- Exercise 6

Select name, commission from Salesman

-- Exercise 7

Create Table Orders(
ord_no int,
purchase_stuff real,
ord_date varchar(45),
customer_id int,
salesman_id int,
)

-- Drop Table Orders

Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70001, 150.5, '2012-10-05',3005,5002)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70009, 270.65, '2012-09-10', 3001, 5005)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70002, 65.26, '2012-10-05', 3002, 5001)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70004, 110.5, '2012-08-17', 3009, 5003)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70007, 948.5, '2012-09-10', 3005, 5002)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70005, 2004.6, '2012-07-27', 3007, 5001)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70008, 5760, '2012-09-10', 3002, 5001)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70010, 1983.43, '2012-10-10', 3004, 5006)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70003, 2480.4, '2012-10-10', 3009, 5003)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70012, 250.45, '2012-06-27', 3008, 5002)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70011, 75.29, '2012-08-17', 3003, 5007)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70013, 3045.6, '2012-04-25', 3002, 5001)

Select ord_no, purchase_stuff, ord_date, salesman_id from Orders

-- Exercise 8

SELECT DISTINCT salesman_id From Orders
Select salesman_id from Orders group by salesman_id

-- Exercise 9

Select * from Salesman
Select name, city from Salesman Where city='Paris'

-- Exercise 10

Create Table Customer(
customer_id int,
customer_name varchar(50),
city varchar(60),
grade int,
salesman_id int
)

Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3002, 'Nick Rimando', 'New York', 100, 5001)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3007, 'Brad Davis', 'New York', 200, 5001)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3005, 'Graham Zusi', 'California', 200, 5002)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3008, 'Julian Green', 'London', 300, 5002)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3004, 'Fabian Johnson', 'Paris', 300, 5002)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3009, 'Geoff Cameron', 'Berlin', 100, 5003)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3003, 'Jozy Altidor', 'Moscow', 200, 5007)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3001, 'Brad Guzan', 'London', Null, 5005)

Select * from Customer
Select customer_id, customer_name, grade, salesman_id from Customer Where grade=200

-- Exercise 11

Select ord_no, ord_date, purchase_stuff from Orders Where salesman_id=5001

-- Exercise 12

Create Table Nobel_win(
year int,
subject varchar(40),
winner nvarchar(50),
country varchar(25),
category varchar(30)
)

Select * from Nobel_win

Insert Into Nobel_win(year, subject, winner, country, category) Values (1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1970, 'Physics', 'Louis Neel', 'France', 'Scientist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1977, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1977, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1977, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1974, 'Economics', 'Reinhard Selten', 'Germany', 'Economist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1974, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1977, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1977, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1977, 'Economics', 'Robert Solow', 'USA', 'Economist')
Insert Into Nobel_win(year, subject, winner, country, category) Values (1974, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist')

Select year, subject, winner from Nobel_win Where year=1970

-- Execise 13

Select winner from Nobel_win Where subject='Literature' and year=1970

-- Execise 14

Select year, subject from Nobel_win Where winner='Dennis Gabor'

-- Execise 15

Select winner from Nobel_win Where subject='Physics' and year=1950

-- Execise 16

Select year, subject, winner, country from Nobel_win Where subject='Chemistry' and year>=1965 and year<=1975

-- Execise 17

Select subject from Nobel_win Where year>=1972 and winner='Menachem Begin' and winner='Yitzhak Rabin' and subject='Prime Minister'
Select subject from Nobel_win Where year>=1972 and subject='Prime Minister'

-- Execise 18

Select year, subject, winner, country, category from Nobel_win Where winner='Louis Neel'

-- Execise 19

Select year, subject, winner, country, category from Nobel_win Where year>= 1970 and year<=1971 and subject='Physics' and subject='Economics'

-- Execise 20

Select year, subject, winner, country, category from Nobel_win Where year=1970 and subject!='Physiology' and subject='Economics'

-- Execise 21

Select year, subject, winner, country, category from Nobel_win Where year<=1971 and subject='Physiology' and year>=1974 and subject='Peace'

-- Execise 22

Select year, subject, winner, country, category from Nobel_win Where winner='Johannes Georg Bednorz'

-- Execise 23

Select * from Nobel_win

Select * From Nobel_win Where subject not Like 'P%' Order by year
Select * From Nobel_win Where subject not Like 'P%' Order by winner asc

-- Execise 24

Select year, subject, winner, country, category from Nobel_win Where year=1970 order by subject asc
Select year, subject, winner, country, category FROM nobel_win WHERE year=1970 ORDER BY CASE WHEN subject IN ('Economics','Chemistry') THEN 1 ELSE 0 END ASC, subject, winner

-- Exercise 25

Create Table Item_mast(
pro_id int,
pro_name varchar(50),
pro_price real,
pro_com int,

)

Select * from Item_mast

Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (101, 'Mother Board', 3200.00, 15)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (102, 'Key Board', 450.00, 16)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (103, 'ZIP drive', 250.00, 14)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (104, 'Speaker', 550.00, 16)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (105, 'Monitor', 5000.00, 11)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (106, 'DVD drive', 900.00, 12)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (107, 'CD drive', 800.00, 12)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (108, 'Printer', 2600.00, 13)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (109, 'Refill cartridge', 350.00, 13)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (110, 'Mouse', 250.00, 12)

Select pro_id, pro_name, pro_price, pro_com from Item_mast Where pro_price > 200 and pro_price < 600

-- Exercise 26

Select avg(pro_price) from Item_mast Where pro_com=13

-- Exercise 27

Select pro_name as 'Item Name', pro_price as 'Prise in Rs' from Item_mast

-- Exercise 28

Select pro_name, pro_price from Item_mast Where pro_price>=250 order by pro_price desc

-- Exercise 29

Select avg(pro_price) as Average_Price , pro_com as Per_Company from Item_mast group by pro_com

-- Exercise 30

Select pro_price, pro_name from Item_mast where pro_price=(Select min(pro_price) from Item_mast)

-- Exercise 31

Create Table Emp_Details(
emp_idno int,
emp_fname varchar(40),
emp_lname varchar(50),
emp_dept int

)

Select * from Emp_Details

Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (127323, 'Michale', 'Robbin', 57)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (526689, 'Carlos', 'Snares', 63)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (843795, 'Enric', 'Dosio', 57)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (328717, 'Jhon', 'Snares', 63)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (444527, 'Joseph', 'Dosni', 47)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (659831, 'Zanifer', 'Emily', 47)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (847674, 'Kuleswar', 'Sitaraman', 57)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (748681, 'Henrey', 'Gabriel', 47)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (555935, 'Alex', 'Manuel', 57)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (539569, 'George', 'Mardy', 27)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (733843, 'Mario', 'Saule', 63)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (631548, 'Alan', 'Snappy', 27)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (839139, 'Maria', 'Foster', 57)

Select Distinct emp_lname from Emp_Details

-- Exercise 32

Select emp_idno, emp_fname, emp_lname, emp_dept from Emp_Details Where emp_lname='Snares'

-- Exercise 33

Select emp_idno, emp_fname, emp_lname, emp_dept from Emp_Details Where emp_dept=57
