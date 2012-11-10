CREATE DATABASE SmERP;

USE SmERP;
CREATE TABLE Employee ( SSN varchar(9)PRIMARY KEY,
						empFirstName varchar(30) NOT NULL,
						empLastName varchar(30) NOT NULL,
						empAddr varchar(255) NOT NULL,
						empState varchar(2) NOT NULL,
						empCity varchar(30) NOT NULL,
						empZIP varchar(7) NOT NULL,
						empPhone varchar(10) NOT NULL,
						empEmail varchar(255) NOT NULL,
						empWage numeric(10,2) NOT NULL,
						jobTitle varchar(100) NOT NULL,
						acctRights varchar(20) NOT NULL,
						empPwd varchar(255) NOT NULL,
						startDate date NOT NULL,
						endDate date,
					  );

CREATE TABLE Customer ( custEmail varchar(255) NOT NULL,
						custFirstName varchar(30) NOT NULL,
						custLastName varchar(30) NOT NULL,
						custAddr varchar(255) NOT NULL,						
						custState varchar(2) NOT NULL,
						custCity varchar(30) NOT NULL,
						custZIP varchar(7) NOT NULL,
						custPhone varchar(10),
						custPwd varchar(255) NOT NULL,
						creditCard varchar(16)
					  );
 
CREATE TABLE Product ( sku varchar(10) PRIMARY KEY,
					   prodName varchar(30)NOT NULL,
					   prodDesc varchar(255) NOT NULL,
					   prodPrice numeric(10,2) NOT NULL,
					   prodQty int NOT NULL
					 );

CREATE TABLE Account ( acctID varchar(4) PRIMARY KEY,
					   acctName varchar(50) NOT NULL,
					   acctDesc varchar(255) NOT NULL,
					   acctBalance numeric(20,2) NOT NULL
					 );

CREATE TABLE generalLedger ( entryNum int PRIMARY KEY,
							 acctID varchar(4) FOREIGN KEY REFERENCES Account,
							 debit numeric(10,2) NOT NULL,
							 credit numeric(10,2) NOT NULL,
							 transactionDesc varchar(255) NOT NULL,
							 entryDate date NOT NULL
							);
							
CREATE TABLE Payroll ( payDate date,
					   empHrs numeric(4,1)NOT NULL,
					   SSN varchar(9)FOREIGN KEY REFERENCES Employee(SSN),
					   currentRate numeric(10,2) NOT NULL,
					   acctID varchar(4) FOREIGN KEY REFERENCES Account,--generalLedger(acctID),
					   PRIMARY KEY (SSN, payDate)
					 );
					 
CREATE TABLE Orders ( orderID varchar(10) PRIMARY KEY,
					  orderDate date NOT NULL,
					  custEmail varchar(255) NOT NULL,
					  acctID varchar(4)NOT NULL
					 );

CREATE TABLE OrderItems ( orderID varchar(10) FOREIGN KEY REFERENCES Orders,
						  sku varchar(10) FOREIGN KEY REFERENCES Product,
						  orderQty int NOT NULL,
						  PRIMARY KEY (orderID, sku)
					 );