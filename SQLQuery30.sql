USE [anuragbDW]
GO

/****** Object:  Table [dbo].[DimProduct]    Script Date: 2/21/2016 10:47:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProduct](
	[dimProductKey] [int] IDENTITY(1000,1) NOT NULL,
	ProductID int NULL,
	ProductTypeID int NULL,
	ProductCategoryID int NULL,
	[Product] [nvarchar](255) NULL,
	[ProductType] [nvarchar](255) NULL,
	[ProductCategory] [nvarchar](255) NULL,
	[ProductRetailPrice] [int] NULL,
	[ProductWholesalePrice] [int] NULL,
	[ProductCost] [int] NULL,
	[ProductRetailProfit] [int] NULL,
	[ProductWholesaleProfit] [int] NULL,
	[ProfitMarginPerc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[dimProductKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


drop table DimProduct