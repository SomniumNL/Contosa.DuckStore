CREATE TABLE [dbo].[Duck] (
    [DuckID]      INT             IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (255)   NOT NULL,
    [Price]       DECIMAL (10, 2) NOT NULL,
    [Description] NVARCHAR (MAX)  NULL,
    [Category]    VARCHAR (100)   NULL,
    [ImageURL]    VARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([DuckID] ASC)
);

