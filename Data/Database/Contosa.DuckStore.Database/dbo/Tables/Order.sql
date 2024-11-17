CREATE TABLE [dbo].[Order] (
    [OrderID]     INT             IDENTITY (1, 1) NOT NULL,
    [CustomerID]  INT             NOT NULL,
    [OrderDate]   DATETIME        DEFAULT (getdate()) NULL,
    [TotalAmount] DECIMAL (10, 2) NOT NULL,
    [Status]      VARCHAR (50)    DEFAULT ('Pending') NULL,
    PRIMARY KEY CLUSTERED ([OrderID] ASC),
    FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID]) ON DELETE CASCADE
);

