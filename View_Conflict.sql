--View scenario of 4 column then remove 1 column and then access view

--- Step 1 : Create Table
USE DBName
GO

CREATE TABLE TableA
(
	ID BIGINT IDENTITY(1,1)
	,Name VARCHAR(100)
	,Gender VARCHAR(10)
	,Address VARCHAR(100)
)
GO

-- Step 2 : Add Data
INSERT INTO TableA VALUES ('A','Male','Mumbai')
SELECT * FROM TableA

-- Step 3 : CREATE View
CREATE VIEW vw_Temp
AS
(
SELECT * FROM TableA
)

-- Step 4 : Access from View
SELECT * FROM vw_Temp

-- Step 5 : Remove 1 Column
ALTER TABLE TableA DROP COLUMN Address

-- Step 6 Access the View : Should generate error as we removed column and didn't altered the view
SELECT * FROM vw_Temp

-- Step 7 : Alter the View
ALTER VIEW vw_Temp
AS
(
SELECT * FROM TableA
)

-- Step 8 : Access the View : Should give 3 columns
SELECT * FROM vw_Temp
