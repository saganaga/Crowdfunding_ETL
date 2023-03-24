CREATE TABLE category (
    category_id VARCHAR(20) PRIMARY KEY,
    category VARCHAR(20) NOT NULL
);

SELECT * FROM category

CREATE TABLE subcategory (
    subcategory_id VARCHAR(20) PRIMARY KEY,
    subcategory VARCHAR(20) NOT NULL
);

SELECT * FROM subcategory

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL
);

SELECT * FROM contacts

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description VARCHAR(100) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(20) NOT NULL,
    bakers_count INT NOT NULL,
    country VARCHAR(20) NOT NULL,
    currency VARCHAR(20) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(20) NOT NULL,
    subcategory_id VARCHAR(20) NOT NULL,
    FOREIGN KEY(contact_id) REFERENCES contacts (contact_id),
    FOREIGN KEY(category_id) REFERENCES category (category_id),
    FOREIGN KEY(subcategory_id) REFERENCES subcategory (subcategory_id)
);

SELECT * FROM campaign