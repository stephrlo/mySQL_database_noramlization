/* CREATING CUSTOMER AND E-NEWSLETTER TABLES */ 

CREATE TABLE IF NOT EXISTS customer (
		customer_id INTEGER PRIMARY KEY,
		first_name VARCHAR(128),
		last_name VARCHAR(128), 
		email_address VARCHAR(255) NOT NULL,
		email_opt_in VARCHAR(3) CHECK (email_opt_in IN ('Yes','No')),
		city VARCHAR(50),
        postal_code VARCHAR(6) );

CREATE TABLE IF NOT EXISTS email_newsletter(
		email_address VARCHAR(255) NOT NULL,
		first_name VARCHAR(128),
        last_name VARCHAR(128),
		email_send_date TIMESTAMP,
		contents VARCHAR(255),
		email_opened VARCHAR(3) CHECK (email_opened IN ('Yes','No')),
        click_through VARCHAR(3) CHECK (click_through IN ('Yes','No')) );
