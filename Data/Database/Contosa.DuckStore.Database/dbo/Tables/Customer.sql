CREATE TABLE [dbo].[Customer] (
    [CustomerID] INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]  VARCHAR (100)  NOT NULL,
    [LastName]   VARCHAR (100)  NOT NULL,
    [Email]      VARCHAR (255)  NOT NULL,
    [Phone]      VARCHAR (20)   NULL,
    [Address]    NVARCHAR (MAX) NULL,
    [City]       VARCHAR (100)  NULL,
    [PostalCode] VARCHAR (20)   NULL,
    [Country]    VARCHAR (100)  NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC),
    UNIQUE NONCLUSTERED ([Email] ASC)
);

