
IF OBJECT_ID('SUPERSTORE_DATA', 'U') IS NOT NULL 
    DROP TABLE SUPERSTORE_DATA;
GO

CREATE TABLE SUPERSTORE_DATA (
    Row_ID            INT PRIMARY KEY,
    Order_ID          VARCHAR(50),
    Order_Date        DATE,
    Ship_Date         DATE,
    Shipping_Duration INT,
    Ship_Mode         VARCHAR(50),
    Customer_ID       VARCHAR(50),
    Customer_Name     NVARCHAR(100),
    Segment           VARCHAR(50),
    City              VARCHAR(50),
    State             VARCHAR(50),
    Postal_Code       VARCHAR(50),
    Region            VARCHAR(50),
    Product_ID        VARCHAR(50),
    Category          VARCHAR(50),
    Sub_Category      VARCHAR(50),
    Product_Name      NVARCHAR(500),
    Sales             DECIMAL(18,2)

);

BULK INSERT SUPERSTORE_DATA
FROM 'C:\data analyst projects 10 days challange\superstore_projects\data\superstore_data.csv'
WITH (
 FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
GO
