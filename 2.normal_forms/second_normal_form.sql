/* TRANSFORMING INTO SECOND NORMAL FORM */ 

-- Creating new table customer_newsletter_metrics 
CREATE TABLE customer_newsletter_metrics (
		customer_metric_id INTEGER AUTO_INCREMENT PRIMARY KEY, 
        customer_id INTEGER, 
        email_id INTEGER,
        email_opened VARCHAR(3) CHECK (email_opened IN ('Yes','No')),
        click_through VARCHAR(3) CHECK (click_through IN ('Yes','No')), 
        FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
        FOREIGN KEY (email_id) REFERENCES email_distribution(email_id) ); 

-- Inserting data from subquery
INSERT INTO customer_newsletter_metrics (customer_id, email_id, email_opened, click_through)
SELECT c.customer_id,
       en.email_id,
       en.email_opened,
       en.click_through
FROM   email_newsletter en
       INNER JOIN 	customer c
	   ON 			en.email_address = c.email_address; 

-- Renaming email_newsletter to reflect email_newsletter_metrics
ALTER TABLE email_newsletter 
	RENAME email_newsletter_metrics;

-- Joining customer_id to email_prospects to segment out customers
ALTER TABLE email_newsletter_metrics
	ADD COLUMN customer_id INTEGER;

SET SQL_SAFE_UPDATES = 0;
UPDATE email_newsletter_metrics en
	INNER JOIN 	customer c
	ON 			en.email_address = c.email_address
SET en.customer_id = c.customer_id; 

-- Deleting crossover entries from customers
DELETE en
FROM   email_newsletter_metrics en
       INNER JOIN customer c
	   ON 		  en.customer_id = c.customer_id; 
SET SQL_SAFE_UPDATES = 1;

-- Creating new email_prospect table
CREATE TABLE IF NOT EXISTS email_prospect(
	 prospect_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
     email_address 	   VARCHAR(255) NOT NULL,
     first_name        VARCHAR(128),
     last_name     	   VARCHAR(128) ); 

-- Inserting unique data into email_prospect table
INSERT INTO email_prospect(email_address, first_name, last_name)
SELECT DISTINCT email_address,
                first_name,
                last_name
FROM   email_newsletter_metrics; 

-- Add foreign key to email_newsletter_metrics
ALTER TABLE email_newsletter_metrics
  ADD COLUMN prospect_id INTEGER AFTER email_prospect_id ; 

SET SQL_SAFE_UPDATES = 0;
UPDATE email_newsletter_metrics m
       INNER JOIN 	email_prospect p 
	   ON 			m.email_address = p.email_address 
SET    m.prospect_id = p.prospect_id; 
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE email_newsletter_metrics
	ADD CONSTRAINT fk_prospect_id
    FOREIGN KEY (prospect_id) REFERENCES email_prospect(prospect_id);

-- Removing email prospect information from metrics table
ALTER TABLE 		email_newsletter_metrics
	DROP COLUMN 	email_address, 
	DROP COLUMN 	first_name,
    DROP COLUMN 	last_name,
    DROP COLUMN 	customer_id;