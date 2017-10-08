/*Pre Work
Create Table*/
create table CUSTOMER(
CUSTOMER_ID VARCHAR(50) CONSTRAINT customerid  PRIMARY KEY,
FIRSTNAME VARCHAR(20),
MIDDLENAMEINITIAL CHAR(1),
LASTNAME VARCHAR(30),
BIRTHDATE DATE CONSTRAINT DOB NOT NULL,
AGE DECIMAL
)

/*Creating Squence*/
CREATE SEQUENCE CUSTOMERID_SEQUENCE
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

/*Inserting Data*/
INSERT INTO CUSTOMER VALUES (CUSTOMERID_SEQUENCE.NEXTVAL,'BHAI','A','SAB','07-JAN-2018',22);
INSERT INTO CUSTOMER VALUES (CUSTOMERID_SEQUENCE.NEXTVAL,'BHAI','A','JAAN','17-JAN-2017',42);
INSERT INTO CUSTOMER VALUES (CUSTOMERID_SEQUENCE.NEXTVAL,'JAY','A','SRI','07-MAR-2015',72);
INSERT INTO CUSTOMER VALUES (CUSTOMERID_SEQUENCE.NEXTVAL,'BHAI','A','SAB','07-FEB-2018',82);
INSERT INTO CUSTOMER VALUES(CUSTOMERID_SEQUENCE.NEXTVAL,'JAY','B','SRI','07-JAN-2018',92);
INSERT INTO CUSTOMER VALUES (CUSTOMERID_SEQUENCE.NEXTVAL,'Khatta','B','MITTA','07-DEC-2013',32);
INSERT INTO CUSTOMER VALUES( CUSTOMERID_SEQUENCE.NEXTVAL,'bajirao',null,'singhjam','02-Jul-87','30' );


/*Select statement with expression on both side. If the expression in where condition evaluates to be true, it will display all the rows in the table.
It is not required that where condition always have column based evaluating conditions.*/
select * from  Customer where 1*10=1*10;





/* NOT operator. It can be  placed in front of expression to reverse the boolean result of expression.*/
select * from  Customer where NOT FIRSTNAME = 'BHAI';

/* AND/OR : AND operator has the highest precedence. Please check below query for theoperator precedence. */
SELECT FIRSTNAME,MIDDLENAMEINITIAL, LASTNAME from  CUSTOMER where FIRSTNAME='JAY' OR FIRSTNAME='BHAI' AND MIDDLENAMEINITIAL='A'


/* IN and BETWEEN operator:- */
select * from  Customer where FIRSTNAME='JAY' OR MIDDLENAMEINITIAL='A' AND BIRTHDATE BETWEEN '06-JAN-17' AND '18-JAN 18'



/* IS NULL, IS NOT NULL . When we run below query where we check the records whose MIDDLENAMEINITIAL=null will not give any results, even though the query is syntactically correct and will return zero records.*/

/*Rather use the second and third query using IS NULL, IS NOT NULL when we need to check for null records or not null records.*/

SELECT * FROM CUSTOMER WHERE MIDDLENAMEINITIAL=null;
SELECT * FROM CUSTOMER WHERE MIDDLENAMEINITIAL IS NULL
SELECT * FROM CUSTOMER WHERE MIDDLENAMEINITIAL IS NOT NULL

/* ORDER BY, ASC, DESC. When we use ORDER BY clause it is default sorted as ASC. When sorting in descending order use DESC.
We can explicitly specify the ascending order by specifying as ASC.*/

SELECT * FROM CUSTOMER WHERE MIDDLENAMEINITIAL IS NOT NULL ORDER BY BIRTHDATE DESC;

/*ORDERBY expression used in select statement.*/
 
SELECT CUSTOMER_ID, FIRSTNAME,LASTNAME,MIDDLENAMEINITIAL,BIRTHDATE,AGE, AGE-20 FROM CUSTOMER WHERE MIDDLENAMEINITIAL IS NOT NULL ORDER BY AGE-20 DESC;

/*ORDER BY and Alias. AS keyword is use to specify the alias name*/
SELECT CUSTOMER_ID, FIRSTNAME,LASTNAME,MIDDLENAMEINITIAL,BIRTHDATE,AGE, AGE-20 AS AGE_20_YRS_AGO FROM CUSTOMER WHERE MIDDLENAMEINITIAL IS NOT NULL ORDER BY  AGE_20_YRS_AGO DESC;

/*ORDERBY Reference by Position. We can  specify the column number in ORDER BY clause. In below query we have ORDER BY 2, which mean the data will be displayed in ASC order sorted by FIRSTNAME COLUMN.*/

SELECT CUSTOMER_ID, FIRSTNAME,LASTNAME,MIDDLENAMEINITIAL,BIRTHDATE,AGE, AGE-20 AS AGE_20_YRS_AGO FROM CUSTOMER WHERE MIDDLENAMEINITIAL IS NOT NULL ORDER BY  2;

/* A column alias, if specified in the select list, is not recognized in the WHERE, GROUP BY, or HAVING clause, but can be used in ORDER BY clause.
Below both query will not work. It will give runtime error.*/

SELECT CUSTOMER_ID, FIRSTNAME,LASTNAME,MIDDLENAMEINITIAL,BIRTHDATE,AGE, AGE-20 AS AGE_20_YRS_AGO FROM CUSTOMER WHERE AGE_20_YRS_AGO > 20
SELECT COUNT(CUSTOMER_ID), AGE-20 AS AGE_20_YRS_AGO FROM CUSTOMER WHERE MIDDLENAMEINITIAL='A' GROUP BY AGE_20_YRS_AGO 
