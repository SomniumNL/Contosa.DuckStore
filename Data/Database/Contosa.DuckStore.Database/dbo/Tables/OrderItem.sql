CREATE TABLE [dbo].[OrderItem] (
    [OrderItemID] INT             IDENTITY (1, 1) NOT NULL,
    [OrderID]     INT             NOT NULL,
    [DuckID]      INT             NOT NULL,
    [Quantity]    INT             NOT NULL,
    [UnitPrice]   DECIMAL (10, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([OrderItemID] ASC),
    FOREIGN KEY ([DuckID]) REFERENCES [dbo].[Duck] ([DuckID]) ON DELETE CASCADE,
    FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Order] ([OrderID]) ON DELETE CASCADE
);

