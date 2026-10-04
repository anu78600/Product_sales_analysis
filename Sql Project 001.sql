-- Creating Tables product_sales, product_data, discount_data.

Drop Table if exists product_sales;
Drop Table if exists product_data;
Drop Table If Exists discount_data;

Create Table product_sales (
		Date Date,
		Customer_type Varchar(50),
		Country Varchar(100),
		Product Varchar(10) References product_data(Product_ID),
		Discount_Band Varchar(20),
		Units_Sold INT


);

Select * From product_sales;

Create Table product_data (
		Product_ID Varchar(10) Primary Key ,
		Product	Varchar(30),
		Category Varchar(50),
		Cost_Price INT,
		Sale_Price INT,
		Brand Varchar(20),
		Description Varchar(500),
		Image_url Varchar(150)


);

Select * From product_data;

Create Table discount_data (
		Discount_Band Varchar(20),
		Discount INT

);

Select * From product_sales;
Select * From product_data;
Select * From Discount_data;

-- Insterting the values

Copy product_data(Product_ID,Product,Category,Cost_Price,Sale_Price,Brand,Description,Image_url
)
From'C:\Data Analysis Project November 2024 - Copy\Product_data.csv'
Delimiter ','
CSV Header;

Copy product_sales (Date,Customer_type,Country,Product,Discount_Band ,Units_Sold
)
From'C:\Data Analysis Project November 2024 - Copy\product_sales.csv'
Delimiter ','
CSV Header;

Copy discount_data (Discount_Band,Discount
)
From'C:\Data Analysis Project November 2024 - Copy\discount_data.csv'
Delimiter ','
CSV Header;

