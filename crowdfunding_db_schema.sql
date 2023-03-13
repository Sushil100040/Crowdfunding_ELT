Create DataBase Crowdfunding_db
WITH
OWNER=Postgres
ENCODING='UTF8'
Tablespace=pg_default
CONNECTION limit=-1
IS_Template=False
LC_COLLATE ='C'
LC_CTYPE='C';

Create table Category (
 category_id Varchar(20) Primary Key,
 category Varchar(30) NOT NULL);
 SELECT *
 FROM category;
 
 Create table Subcategory (
 subcategory_id Varchar(20) Primary Key,
 subcategory Varchar(50) NOT NULL);
 SELECT *
 FROM Subcategory;
 
 Create table Contacts (
 contacts_id Int PRIMARY KEY,
 first_name Varchar(50) NOT NULL,
 last_name Varchar(50) NOT NULL,
 email Varchar(100) NOT NULL);
 SELECT *
 FROM Contacts;
 
 Create table Campaign (
 cf_id SERIAL PRIMARY KEY,
 contact_id Int NOT NULL,
 company_name varchar(50) NOT NULL,
 description varchar NOT NULL,
 goal decimal(10,2) NOT NULL,
 pledged decimal(10,2) NOT NULL,
 outcome varchar(50),
 backers_county Int,
 country varchar(20),
 currency varchar(20),
 launch_date date,
 end_date date,
 category_id varchar(20) NOT NULL,
 subcategory_id varchar(30) NOT NULL,
 
 FOREIGN KEY(contact_id)REFERENCES Contacts(contacts_id),
 FOREIGN KEY(category_id)REFERENCES Category(category_id),
 FOREIGN KEY(subcategory_id)REFERENCES Subcategory(subcategory_id));
 
 SELECT *  
 FROM Campaign limit 100;
 
 