create database Course
use Course

create table Teachers(
	Id primary key identity(1,1),
	[Name] nvarchar(50) not null,
	Surname nvarchar(50),
	Email nvarchar(50) unique,
	Age int check,
	Salary decimal
)

select * from Teachers

INSERT INTO Teachers([Name],Surname,Email,Age,Salary)
VALUES('Cavid','Bashirov','cavid@mail.ru',29,2999),
	  ('Konul','Ibrahimova','konul@code.edu.az',27,2900),
	  ('Cinare','Ibadova','cinare@mail.ru',22,2800),
	  ('Roya','Meherremova','roya@mail.ru',26,2700),
	  ('Cavid','Ismayilzade','cavid@gmail.com',22,1)



	  //Maaşı 1000 və 3000 arasında olan müəllimlər
	  select * from Teachers where Salary BETWEEN 1000 AND 3000
	  
	  //Adı "C" hərfi ilə başlayan müəllimlərin siyahısı
	  select * from Teachers where [Name] LIKE 'c%'

	  //Emailin sonu (mail.ru) olan müəllimlərin adı və soyadı
	  select [Name],Surname from Teachers where Email LIKE '%@mail.ru'

	  //Yaşı bütün müəllimlərin orta yaşından böyük olan müəllimlərin siyashısı
	  select AVG(Age) as TeachersAges from Teachers 
	  select * from Teachers where Age>(select avg(Age) from Teachers)