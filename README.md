# Crowdfunding_ETL
This was a group project and I worked with Robert Bentz. My Partner, Robert had different code.
## Purpose
This is an ETL mini project, where the purpose is:
- To practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. 
- After transforming the data, to create four CSV files and use the CSV file data to create an ERD and a table schema.
- Lastly, to upload the CSV file data into a Postgres database.
## Overview
This mini project is divided into the following subsections:
- Create the Category and Subcategory DataFrames
- Create the Campaign DataFrame
- Create the Contacts DataFrame
- Create the Crowdfunding Database
### Create the Category and Subcategory DataFrames
#### A Category DataFrame is Created
- [x] The DataFrame contains a "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
- [x] The DataFrame has a "category" column that contains only the category titles
- [x] The category DataFrame is exported as category.csv
#### A Subcategory DataFrame is Created
- [x] The DataFrame contains a "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
- [x] The DataFrame contains a "subcategory" column that contains only the subcategory titles
- [x] The subcategory DataFrame is exported as category.csv
### Create the Campaign DataFrame
- [x] The DataFrame has the following columns:
    - A "cf_id" column
    - A "contact_id" column
    - A "company_name" column
    - A "description" column
    - A "goal" column that is a float data type
    - A "pledged" column that is a float data type
    - An "outcome" column
    - A "backers_count" column
    - A "country" column
    - A "currency" column
    - A "launch_date" with the time formatted as "YYYY-MM-DD"
    - An "end_date" with the time formatted as "YYYY-MM-DD"
    - A "category_id" column that contains the unique identification numbers matching those in the "category_id" column of the category DataFrame
    - A "subcategory_id" column that contains the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
- [x] The campaign DataFrame is exported as campaign.csv
### Create the Contacts DataFrame
- [x] The DataFrame has the following columns:
    - A "contact_id" column
    - A "first_name" column
    - A "last_name" column
    - An "email" column
- [x] The contacts DataFrame is exported as contacts.csv
### Create the Crowdfunding Database
- [x] A database schema labeled, crowdfunding_db_schema.sql is created
- [x] A crowdfunding_db is created using the crowdfunding_db_schema.sql file
- [x] The database has the appropriate primary and foreign keys and relationships
- [x] Each CSV file is imported into the appropriate table without errors
- [x] The data from each table is displayed using a SELECT * statement
## Results
Entity Relationship Diagram
![Entity Relationship Diagram](Crowdfunding_DB_ERD.png)
Table schemata is found in crowdfunding_db_schema.sql