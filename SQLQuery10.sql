USE [anuragbDW]
GO

/****** Object:  Table [dbo].[factSalesTarget]    Script Date: 2/23/2016 7:58:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[factSalesTarget](
	[factSalesTargetKey] [int] IDENTITY(100,1) NOT NULL,
	[dimStoreKey] [int] NOT NULL,
	[dimResellerKey] [int] NOT NULL,
	[dimChannelKey] [int] NOT NULL,
	[dimTargetDateKey] [int] NOT NULL,
	[SalesTargetAmount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[factSalesTargetKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[factSalesTarget]  WITH CHECK ADD FOREIGN KEY([dimChannelKey])
REFERENCES [dbo].[DimChannel] ([dimChannelKey])
GO

ALTER TABLE [dbo].[factSalesTarget]  WITH CHECK ADD FOREIGN KEY([dimResellerKey])
REFERENCES [dbo].[DimReseller] ([dimResellerKey])
GO

ALTER TABLE [dbo].[factSalesTarget]  WITH CHECK ADD FOREIGN KEY([dimStoreKey])
REFERENCES [dbo].[DimStore] ([dimStoreKey])
GO

ALTER TABLE [dbo].[factSalesTarget]  WITH CHECK ADD FOREIGN KEY([dimTargetDateKey])
REFERENCES [dbo].[DimDate] ([DimDateID])
GO


