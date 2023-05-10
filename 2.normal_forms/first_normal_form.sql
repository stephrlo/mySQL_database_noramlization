/* TRANSFORMING INTO FIRST NORMAL FORM */ 

--  Add primary key to email_newsletter
ALTER TABLE email_newsletter
	ADD COLUMN email_prospect_id INTEGER AUTO_INCREMENT PRIMARY KEY FIRST; 

-- Making new promo_code column 
ALTER TABLE email_newsletter
	ADD COLUMN promo_code VARCHAR(20); 

-- Extracting promo_code from contents
UPDATE email_newsletter
	SET promo_code = SUBSTRING(contents, POSITION(',' IN contents) + 1, length(contents));

-- Renaming contents column to subject_line
ALTER TABLE email_newsletter 
	RENAME COLUMN contents TO subject_line;

-- Removing promo_code substring from subject_line
SET SQL_SAFE_UPDATES = 0;
UPDATE 	email_newsletter
SET 	subject_line = SUBSTRING(subject_line, 1, POSITION(',' IN subject_line) -1);
SET SQL_SAFE_UPDATES = 1;

-- Creating new table for emails
CREATE TABLE IF NOT EXISTS email_distribution(
	 email_id        INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
     email_send_date TIMESTAMP,
     subject_line    VARCHAR(255),
     promo_code      VARCHAR(20) ); 

-- Inserting unique data into email table
INSERT INTO email_distribution(email_send_date, subject_line, promo_code)
SELECT DISTINCT email_send_date,
                subject_line,
                promo_code
FROM   email_newsletter; 

-- Adding email_distribution foreign key to email_newsletter table 
ALTER TABLE email_newsletter
  ADD COLUMN email_id INTEGER AFTER last_name; 

UPDATE email_newsletter en
       INNER JOIN 	email_distribution ed
	   ON 			ed.email_send_date = en.email_send_date
SET    en.email_id = ed.email_id; 

ALTER TABLE email_newsletter
	ADD CONSTRAINT fk_email_id 
    FOREIGN KEY (email_id) REFERENCES email_distribution(email_id);

-- Removing email distibution-related columns from original table
ALTER TABLE 		email_newsletter
	DROP COLUMN 	email_send_date, 
	DROP COLUMN 	subject_line,
    DROP COLUMN 	promo_code;