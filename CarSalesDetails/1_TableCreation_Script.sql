USE SQLQueryCrackers
GO

CREATE TABLE Sales_Team
(
[Emp No] INT
,[Car Dealer First Name] VARCHAR(100)
,[Car Dealer Last Name] VARCHAR(50)
,[Monthly Target] BIGINT
)
INSERT INTO Sales_Team VALUES (12134,'Ajay','Alex',100000 )
INSERT INTO Sales_Team VALUES (12134,'Mary','Jones',300000 )
INSERT INTO Sales_Team VALUES (12134,'Kiara','Shetty',200000 )

CREATE TABLE Sales_Data
(
[Customer manager ID] INT
,[Customer Name] VARCHAR(50)
,[Customer Car Code] INT
,[Deposit Paid for booking] INT
)

INSERT INTO Sales_Data VALUES (12134,'Rodger',18163,10000)
INSERT INTO Sales_Data VALUES (12110,'Amit',16188,12000)
INSERT INTO Sales_Data VALUES (12134,'Ashish',16188,11980)
INSERT INTO Sales_Data VALUES (18164,'Kale',19182,9400)
INSERT INTO Sales_Data VALUES (12110,'Cagatay',21199,13430)
INSERT INTO Sales_Data VALUES (12110,'Ryan',21199,15433)
INSERT INTO Sales_Data VALUES (18164,'Akash',16188,17340)

CREATE TABLE Cars_Data
(
[Car Code] INT
,[Car Name] VARCHAR(50)
,[Car Price] INT
)

INSERT INTO Cars_Data VALUES (18163,'Series 1',15000)
INSERT INTO Cars_Data VALUES (16188,'Series 6',30000)
INSERT INTO Cars_Data VALUES (19182,'Series 5',25000)
INSERT INTO Cars_Data VALUES (21199,'Series 4',20000)
