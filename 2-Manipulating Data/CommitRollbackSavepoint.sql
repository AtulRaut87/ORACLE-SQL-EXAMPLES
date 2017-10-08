/*SAVEPOINT:*/
SAVEPOINT firstcut;
INSERT INTO CUSTOMER (CUSTOMER_ID,LASTNAME,BIRTHDATE,FIRSTNAME,AGE) VALUES (CUSTOMERID_SEQUENCE.NEXTVAL,'Gulabo','07-JAN-2018','Khatri','18');
SAVEPOINT SECONDCUT;
/*It will create a checkpoint for the data added till now. And this ca n be use to rollback till the data added before we ran SAVEPOINT command.*/

/*ROLLBACK:-
Now add one more row: */
INSERT INTO CUSTOMER (CUSTOMER_ID,LASTNAME,BIRTHDATE,FIRSTNAME,AGE) VALUES (CUSTOMERID_SEQUENCE.NEXTVAL,'Ajnabi','07-JAN-2018','Pravasi','18');

/*Rollback to last save Saved point
Execute below command, it will rollback the data added till last save point added SECONDCUT*/
ROLLBACK WORK TO SECONDCUT;

/*Verify data by :-*/ SELECT * FROM CUSTOMER

/*Rollback to last committed changes run below command*/
ROLLBACK


/*Commit:-*/
/*Run commit command to save the changes done so far to database.*/
