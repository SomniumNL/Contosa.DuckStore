-- Begin a transaction for safety
BEGIN TRANSACTION;

-- Step 1: Delete from dependent tables (child tables)
DELETE FROM OrderItem;

-- Step 2: Delete from parent tables
DELETE FROM [Order];
DELETE FROM Customer;
DELETE FROM Duck;

-- Step 3: Commit the transaction
COMMIT TRANSACTION;

-- Optional: Reset identity columns
DBCC CHECKIDENT ('OrderItem', RESEED, 0);
DBCC CHECKIDENT ('Order', RESEED, 0);
DBCC CHECKIDENT ('Customer', RESEED, 0);
DBCC CHECKIDENT ('Duck', RESEED, 0);