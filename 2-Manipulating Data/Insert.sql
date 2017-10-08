/*Insert query with random sequence column name specified.*/
INSERT INTO CUSTOMER (CUSTOMER_ID,LASTNAME,BIRTHDATE,FIRSTNAME) VALUES (CUSTOMERID_SEQUENCE.NEXTVAL,'BHAI','07-JAN-2018','SAB');

/*Error: "column not allowed here"
Below Insert query throws error, as double inverted column use to specify values. 
Double inverted comma not allowed in value section.*/
INSERT INTO CUSTOMER (CUSTOMER_ID,LASTNAME,BIRTHDATE,FIRSTNAME) VALUES (CUSTOMERID_SEQUENCE.NEXTVAL,"BHAI",'07-JAN-2018','SAB');

/*Auto datatype conversion
As age field is decimal and we have used inverted comma tospecify value, it will auto convert it to decimal.
If the  value specified for age was aplha numeric then the query will fail.*/

INSERT INTO CUSTOMER (CUSTOMER_ID,LASTNAME,BIRTHDATE,FIRSTNAME,AGE) VALUES (CUSTOMERID_SEQUENCE.NEXTVAL,'Jay','07-JAN-2018','Khatri','12');

/*Query will fail with error as invalid number*/
INSERT INTO CUSTOMER (CUSTOMER_ID,LASTNAME,BIRTHDATE,FIRSTNAME,AGE) VALUES (CUSTOMERID_SEQUENCE.NEXTVAL,'Jay','07-JAN-2018','Khatri','12age');