use etl1;

-- all columns for all passengers in the Titanic dataset.  
select * from titanic;

--  number of passengers in each class (1st, 2nd, 3rd). 
select count(name),pclass from titanic group by pclass order by pclass;

-- number of male and female passengers.  
select count(name),sex from titanic group by sex;

-- names of passengers who survived.
select name from titanic where survived='survived';

-- average age of passengers. 
select avg(age) from titanic;

-- names and ages of passengers who were younger than 18. 
select name,age from titanic where age<18;

-- number of passengers in each embarkation port (C, Q, S). 
select count(name),embarked from titanic group by embarked;

-- highest fare paid by any passenger.
select max(fare) from titanic;

-- average age of passengers for each class. 
select pclass,avg(age) from titanic group by pclass order by pclass;

-- passenger names and ages for those who survived and were in 1st class. 
select name,age from titanic where survived='survived' and pclass=1;

-- number of passengers who paid more than 50 for their ticket. 
select fare,count(name) from titanic group by fare having fare>50;

-- names of passengers who did not survive and were in 3rd class.
select name from titanic where survived='died' and pclass=3;

-- number of passengers with missing values in the "Age" column.  
select age,count(age) from titanic group by age having age is null;