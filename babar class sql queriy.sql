SELECT * FROM classicmodels.employees;
SELECT   email,reportsto FROM classicmodels.employees;
SELECT * FROM classicmodels.employees;
SELECT   distinct  reportsto from classicmodels.employees;
select   distinct officecode,reportsto from classicmodels.employees;
SELECT   distinct lastname from classicmodels.employees;
SELECT * from classicmodels.employees limit 2;
SELECT * FROM classicmodels.employees WHERE reportsTo=1002; 
SELECT   DISTINCT reportsto FROM classicmodels.employees;
SELECT * from classicmodels.employees where officecode != 4;
SELECT   firstname, lastname from classicmodels.employees;
SELECT   firstname,lastname,officecode FROM classicmodels.employees where officecode=1;
SELECT * FROM classicmodels.employees WHERE officecode>=1 AND officecode <=4;
SELECT * FROM classicmodels.employees WHERE officecode=1 OR jobtitle="vp sales";
SELECT * FROM classicmodels.employees WHERE officecode=1 AND firstname ="anthony" AND jobtitle="sales manager (na)";
SELECT * FROM classicmodels.employees WHERE (officecode=6 AND firstname="william") OR lastname="bondur";
SELECT * FROM classicmodels.employees ORDER BY officecode DESC;
SELECT * FROM classicmodels.employees ORDER BY officecode,firstname,lastname limit 4;
SELECT * FROM classicmodels.employees ORDER BY convert('lastname' , decimal) ;
SELECT * FROM classicmodels.employees WHERE lastName='0';
SELECT * FROM classicmodels.employees WHERE lastName is NOT null;
SELECT * FROM classicmodels.employees WHERE firstName like '%d'; --  ends with
SELECT * FROM classicmodels.employees WHERE firstName like 'a%'; -- starts with
SELECT * FROM classicmodels.employees WHERE firstName like 'p___r'; -- contains
SELECT firstname,lastname,reportsTo FROM classicmodels.employees WHERE reportsTo=1621;
use classicmdels;
SELECT * FROM classicmodels.employees WHERE officecode=6 or officeCode=7;
SELECT * FROM classicmodels.customers;
SELECT * FROM classicmodels.customers where country='USA' AND country='USA';
SELECT * FROM classicmodels.customers where country='USA' AND city='las vegas';
SELECT * FROM classicmodels.employees;
SELECT LOWER(lastname) FROM classicmodels.employees;
SELECT * FROM classicmodels.employees WHERE length(LASTNAME)<=6;
SELECT concat(firstname,lastname) FROM classicmodels.employees;
SELECT concat(concat(firstname, '   '),lastname) FROM classicmodels.employees;
SELECT * FROM classicmodels.orders;
Select adddate(orderdate,interval 10 day), orderdate from  classicmodels.orders;
SELECT count(*) FROM classicmodels.orders;
Select count(customernumber),sum(customernumber),avg(customernumber),min(customernumber),max(customernumber) FROM classicmodels.orders;
SELECT * FROM classicmodels.offices;
select country , count(*) from classicmodels.offices group by country;
SELECT * FROM classicmodels.offices;
SELECT country,min(officecode) FROM classicmodels.offices group by country;
SELECT country,avg(officecode) FROM classicmodels.offices group by country;
SELECT country FROM classicmodels.offices group by country;
select country,count(*) FROM classicmodels.customers group by country;
select country,count(officecode) FROM classicmodels.officesgroup group by country;
SELECT * FROM classicmodels.customers;
SELECT * FROM classicmodels.offices;
select country, count(*) from classicmodels.offices group by country;
SELECT distinct COUNTRY FROM  classicmodels.offices;
SELECT COUNTRY FROM  classicmodels.offices WHERE country='usa';
SELECT contactfirstname FROM  classicmodels.customers WHERE length(contactfirstname)<=3;
SELECT customerNumber FROM  classicmodels.customers WHERE customerNumber>=100 and customerNumber<=200;
SELECT lower(contactfirstname) FROM classicmodels.customers; 
SELECT lower (contactFirstName) FROM classicmodels.customers where contactfirstname like 'J%'; 
Select * FROM classicmodels.customers order by country;
Select country,count(*) FROM classicmodels.customers group by country;
SELECT * FROM classicmodels.employees;
select reportsto,count(*) from classicmodels.employees group by reportsTo having reportsTo='1002';
select jobTitle,count(*)  from classicmodels.employees group by jobTitle having count(*)>1;
SELECT * FROM classicmodels.employees;
SELECT lastname FROM classicmodels.employees where lastname like '';
Select officecode , avg(reportsTo) from classicmodels.employees group by officeCode ;
SELECT avg(customerNumber) FROM classicmodels.payments;
SELECT * FROM classicmodels.payments where customerNumber>(SELECT avg(customerNumber) FROM classicmodels.payments);
SELECT lastname,reportsTo FROM classicmodels.employees where reportsTo<1100;
SELECT * FROM classicmodels.employees where reportsTo in (SELECT reportsTo FROM classicmodels.employees where reportsTo<1100);
SELECT * FROM classicmodels.employees where reportsTo=1002 or reportsTo=1056;
SELECT * FROM classicmodels.employees where reportsTo in (1002,1100);
SELECT reportsTo FROM classicmodels.employees where reportsTo<1056;
SELECT * FROM classicmodels.employees where reportsTo<1056;
-- SELECT * FROM classicmodels.employees where reportsTo in (SELECT reportsTo FROM classicmodels.employees where reportsTo<1056)
SELECT reportsTo FROM classicmodels.employees where reportsTo<1056;
SELECT * FROM classicmodels.products;
SELECT buyPrice FROM classicmodels.products where buyPrice<20;
SELECT * FROM classicmodels.employees where reportsTo in (SELECT buyPrice FROM classicmodels.products where buyPrice<20);







