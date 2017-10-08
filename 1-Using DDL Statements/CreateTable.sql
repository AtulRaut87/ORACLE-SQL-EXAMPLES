/*Create Table*/
create table Customer (
CustomerID varchar(50) CONSTRAINT CustomerId PRIMARY KEY ,
FirstName varchar(30),
MiddleNameInitial char(1),
LastName varchar(30),
BirthDate date constraint BirthdateNotNull Not Null,
age decimal
)

/*Table created with Primary key specified at the end.*/
create Table Account(
AccountId varchar(50),
AccountType varchar(10),
AccountBalance decimal(5,2) default 0,
constraint PK_ACCOUNTID primary key (AccountId)
)

/*Create table to test types of Timestamp/Interval.*/
create table datetimestampsampler (
updateDate timestamp(2),
createDate TIMESTAMP(2) WITH TIME ZONE,
transactionDate TIMESTAMP(2) WITH LOCAL TIME ZONE,
birthdate INTERVAL YEAR(2) TO MONTH,
expiryDate INTERVAL DAY (2) TO SECOND (4)
)
insert into  datetimestampsampler values ( SYSDATE,SYSDATE,SYSDATE,INTERVAL '1' YEAR,INTERVAL '11' DAY );
insert into  datetimestampsampler values ( SYSDATE,SYSDATE,SYSDATE,INTERVAL '19' MONTH,INTERVAL '1828' Minute  );
insert into  datetimestampsampler values ( SYSDATE,SYSDATE,SYSDATE,INTERVAL '19' MONTH,INTERVAL '388' Minute  );
select * from datetimestampsampler

