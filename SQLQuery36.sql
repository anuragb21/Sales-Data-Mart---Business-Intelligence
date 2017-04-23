USE [anuragbDW]
GO

/****** Object:  Table [dbo].[DimStore]    Script Date: 2/22/2016 12:45:24 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

drop table DimStore
CREATE TABLE [dbo].[DimStore](
	[dimStoreKey] [int] IDENTITY(1,1) NOT NULL,
	[dimLocationKey] [int] NOT NULL,
	[StoreID] int NULL,
	[StoreNumber] [int] NULL,
	[StoreManager] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[dimStoreKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[DimStore]  WITH CHECK ADD  CONSTRAINT [FK_Dim_DimStore_DimLocationKey] FOREIGN KEY([dimLocationKey])
REFERENCES [dbo].[dimLocation] ([dimLocationKey])
GO

ALTER TABLE [dbo].[DimStore] CHECK CONSTRAINT [FK_Dim_DimStore_DimLocationKey]
GO

INSERT INTO dbo.DimStore
(
dimLocationKey,
StoreID,
StoreNumber,
StoreManager
)
SELECT DL.dimLocationKey,
SS.StoreID,
SS.StoreNumber,
SS.StoreManager
FROM Staging_Store SS
INNER JOIN DimLocation DL
ON SS.Address = DL.Address


SET IDENTITY_INSERT dbo.DimStore ON;

INSERT INTO dbo.DimStore
(
dimStoreKey,
DimLocationKey,
StoreID,
StoreNumber,
StoreManager
)
VALUES
(
-1,
-1, 
-1,
-1,
'Unknown'
);
SET IDENTITY_INSERT dbo.dimStore OFF;
