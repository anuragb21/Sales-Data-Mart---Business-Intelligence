CREATE TABLE [dbo].[Staging_Reseller]
(
	[ResellerID] [uniqueidentifier] NULL,
	[Contact] [nvarchar](255) NULL,
	[EmailAddress] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[StateProvince] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[PostalCode] [nvarchar](255) NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ResellerName] [nvarchar](255) NULL
)