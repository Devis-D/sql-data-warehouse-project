-- This checks if a user defined table ('U') exists in bronze schema. If it exists, drop it.
-- If it doesnt exist, do nothing (avoids an error).
IF OBJECT_ID ('BRONZE.crm_cust_info','U') IS NOT NULL 
DROP TABLE BRONZE.crm_cust_info


-- Here we have defined the tables using DDL commands based on the source system that is CRM and ERP.
-- Tables for CRM source.
CREATE TABLE BRONZE.crm_cust_info (
	cst_id INT,
	cst_key NVARCHAR(50),
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_material_status NVARCHAR(50),
	cst_gndr NVARCHAR(50),
	cst_create_date DATE
); 
IF OBJECT_ID (' BRONZE.crm_prd_info','U') IS NOT NULL 
DROP TABLE  BRONZE.crm_prd_info
CREATE TABLE BRONZE.crm_prd_info (
	prd_id INT,
	prd_key NVARCHAR(50),
	prd_nm NVARCHAR(50),
	prd_cost INT,
	prd_line NVARCHAR(5),
	prd_start_dt DATETIME,
	prd_end_dt DATETIME
);
IF OBJECT_ID ('BRONZE.sales_details','U') IS NOT NULL 
DROP TABLE BRONZE.sales_details
CREATE TABLE BRONZE.sales_details (
    sls_ord_num NVARCHAR(50),
	sls_prd_key NVARCHAR(50),
	sls_cust_id INT,
	sls_order_dt INT,
	sls_ship_dt INT,
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT
);
-- Tables for ERP source.
IF OBJECT_ID ('BRONZE.CUST_AZ12','U') IS NOT NULL 
DROP TABLE BRONZE.CUST_AZ12
CREATE TABLE BRONZE.CUST_AZ12 ( 
	CID NVARCHAR(50),
	BDATE DATE,
	GEN NVARCHAR(20)
);
IF OBJECT_ID ('BRONZE.LOC_A101','U') IS NOT NULL 
DROP TABLE BRONZE.LOC_A101
CREATE TABLE BRONZE.LOC_A101 (
	CID NVARCHAR(50),
	CNTRY NVARCHAR(20)
)
IF OBJECT_ID ('BRONZE.PX_CAT_G1V2','U') IS NOT NULL 
DROP TABLE BRONZE.PX_CAT_G1V2
CREATE TABLE BRONZE.PX_CAT_G1V2 (
	ID NVARCHAR(20),
	CAT NVARCHAR(50),
	SUBCAT NVARCHAR(40),
	MAINTENANCE NVARCHAR(10)
);
