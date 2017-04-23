drop table DimProduct

Create table DimProduct
( 
dimProductKey int Identity (1,1) PRIMARY KEY not null,
ProductID int null,
ProductTypeID int null,
ProductCategoryID int null,
ProductType nvarchar(255) null,
ProductCategory nvarchar (255) null,
ProductName nvarchar (255) null,
ProductRetailPrice int null,
ProductWholesalePrice int null,
ProductCost int null,
ProductRetailProfit int null,
ProductWholesaleProfit int null,
ProfitMarginPerc int null
)

INSERT INTO dbo.DimProduct
(
ProductID,
ProductTypeID,
ProductCategoryID,
ProductType,
ProductCategory,
ProductName,
ProductRetailPrice,
ProductWholesalePrice,
ProductCost,
ProductRetailProfit,
ProductWholesaleProfit,
ProfitMarginPerc
)
SELECT 
SP.ProductID,
SPT.ProductTypeID,
SPC.ProductCategoryID,
SPT.ProductType,
SPC.ProductCategory,
SP.Product,
SP.Price,
SP.WholesalePrice,
SP.Cost,
(SP.Price - SP.Cost),
(SP.WholesalePrice - SP.Cost),
(SP.Price - SP.Cost)/SP.Price*100
FROM  Staging_ProductType SPT
INNER JOIN Staging_ProductCategory SPC
ON SPT.ProductCategoryID = SPC.ProductCategoryID
INNER JOIN Staging_Product SP
ON SPT.ProductTypeID=SP.ProductTypeID


INSERT INTO dbo.dimChannel
(
 ChannelID,
 ChannelCategoryID,
 ChannelName,
 ChannelCategory,
 CreatedDate,
 CreatedBy,
 ModifiedDate,
 ModifiedBy
)
SELECT SC.ChannelID, SCC.ChannelCategoryID, SC.Channel, SCC.ChannelCategory, SC.CreatedDate,
 SC.CreatedBy, SC.ModifiedDate, SC.ModifiedBy
FROM StagingChannel SC
INNER JOIN StagingChannelCategory SCC
ON SC.ChannelCategoryID = SCC.ChannelCategoryID