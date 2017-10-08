/*Creating simple view:-*/
create view Customer_View AS select FirstName, LastName, BirthDate from CUSTOMER;

/*Create view with custom  column names.*/
create view Account_View ( Account_Id, Account_Balance UNIQUE RELY DISABLE NOVALIDATE,
constraint Pk_AccKey primary key (Account_Id) RELY DISABLE NOVALIDATE ) as select AccountId,AccountBalance from Account;


/*Creating Squence*/
create sequence customerid_sequence
start with 1
increment by 1
nocache
nocycle;

/*Creating Indexes*/
create index idx_first_Last_DOB on CUSTOMER (FirstName, LastName, BirthDate);
