-- Begin a transaction for safety
BEGIN TRANSACTION;

-- Step 1: Delete from dependent tables (child tables)
DELETE FROM OrderItems;

-- Step 2: Delete from parent tables
DELETE FROM Orders;
DELETE FROM Customers;
DELETE FROM Ducks;

-- Step 3: Commit the transaction
COMMIT TRANSACTION;

-- Optional: Reset identity columns
DBCC CHECKIDENT ('OrderItems', RESEED, 0);
DBCC CHECKIDENT ('Orders', RESEED, 0);
DBCC CHECKIDENT ('Customers', RESEED, 0);
DBCC CHECKIDENT ('Ducks', RESEED, 0);