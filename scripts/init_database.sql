-- Here we are creating our new Database.
CREATE DATABASE DataWareHouse;
--Making sure that the database that we are currently using its the new one.
use DataWareHouse

-- After creating our database now we create schemas or the Medallion Architecture
CREATE SCHEMA SILVER;
GO
CREATE SCHEMA GOLD;
GO


