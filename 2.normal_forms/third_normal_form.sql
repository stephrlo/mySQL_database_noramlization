/* TRANSFORMING INTO THIRD NORMAL FORM */ 

-- Separating out postal code and city 
CREATE TABLE postal_code (
		postal_code  VARCHAR(6) PRIMARY KEY, 
		city 		 VARCHAR(50) );

-- Inserting unique data into the table
INSERT INTO postal_code(postal_code, city)
SELECT DISTINCT postal_code, 
				city
FROM   customer; 

-- Adding foreign key postal_code to customer table
ALTER TABLE customer
	ADD CONSTRAINT fk_postal_code
    FOREIGN KEY (postal_code) REFERENCES postal_code(postal_code);
    
-- Drop city from customer table 
ALTER TABLE 		customer
	DROP COLUMN 	city; 