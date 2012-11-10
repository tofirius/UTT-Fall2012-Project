CREATE DATABASE SmERP;

USE SmERP;
CREATE TABLE Employee ( SSN char(9)PRIMARY KEY,
						empFirstName char(30) NOT NULL,
						empLastName char(30) NOT NULL,
						empAddr char(255) NOT NULL,
						empState char(2) NOT NULL,
						empCity char(30) NOT NULL,
						empZIP char(7) NOT NULL,
						empPhone char(10) NOT NULL,
						empEmail char(255) NOT NULL,
						empWage numeric(10,2) NOT NULL,
						jobTitle char(100) NOT NULL,
						acctRights char(20) NOT NULL,
						empPwd char(255) NOT NULL,
						startDate date NOT NULL,
						endDate date,
					  );

CREATE TABLE Customer ( custEmail char(255) NOT NULL,
						custFirstName char(30) NOT NULL,
						custLastName char(30) NOT NULL,
						custAddr char(255) NOT NULL,						
						custState char(2) NOT NULL,
						custCity char(30) NOT NULL,
						custZIP char(7) NOT NULL,
						custPhone char(10),
						custPwd char(255) NOT NULL,
						creditCard char(16)
					  );
 
CREATE TABLE Product ( sku char(10) PRIMARY KEY,
					   prodName char(30)NOT NULL,
					   prodDesc char(255) NOT NULL,
					   prodPrice numeric(10,2) NOT NULL,
					   prodQty int NOT NULL
					 );

CREATE TABLE Account ( acctID char(4) PRIMARY KEY,
					   acctName char(50) NOT NULL,
					   acctDesc char(255) NOT NULL,
					   acctBalance numeric(20,2) NOT NULL
					 );

CREATE TABLE generalLedger ( entryNum int PRIMARY KEY,
							 acctID char(4) FOREIGN KEY REFERENCES Account,
							 debit numeric(10,2) NOT NULL,
							 credit numeric(10,2) NOT NULL,
							 transactionDesc char(255) NOT NULL,
							 entryDate date NOT NULL
							);
							
CREATE TABLE Payroll ( payDate date,
					   empHrs numeric(4,1)NOT NULL,
					   SSN char(9)FOREIGN KEY REFERENCES Employee(SSN),
					   currentRate numeric(10,2) NOT NULL,
					   acctID char(4) FOREIGN KEY REFERENCES Account,--generalLedger(acctID),
					   PRIMARY KEY (SSN, payDate)
					 );
					 
CREATE TABLE Orders ( orderID char(10) PRIMARY KEY,
					  orderDate date NOT NULL,
					  custEmail char(255) NOT NULL,
					  acctID char(4)NOT NULL
					 );

CREATE TABLE OrderItems ( orderID char(10) FOREIGN KEY REFERENCES Orders,
						  sku char(10) FOREIGN KEY REFERENCES Product,
						  orderQty int NOT NULL,
						  PRIMARY KEY (orderID, sku)
					 );