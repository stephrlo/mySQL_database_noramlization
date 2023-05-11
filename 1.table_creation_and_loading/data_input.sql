<<<<<<< HEAD
/* DATA INPUTS FOR CUSTOMER AND E-NEWSLETTER TABLES */ 
=======
/* DATA INPUTS FOR ORDER AND E-NEWSLETTER TABLES */ 
>>>>>>> 909b2b88a20f0a9ee027b17f2f3e6f20b48f6000

INSERT INTO 
		customer (customer_id, first_name, last_name, email_address, email_opt_in, city, postal_code)

VALUES 
    (1, 'John', 'Doe', 'john.doe@xyz.com', 'Yes', 'Toronto', 'M4S1T4'),
    (2, 'Liam', 'Wilson', 'liam.wilson@xyz.com', 'No', 'Vancouver', 'V5K0A1'),
    (3, 'Avery', 'Thompson', 'avery.thompson@abc.com', 'Yes', 'Toronto', 'M5V1J6'),
    (4, 'Noah', 'Anderson', 'noah.anderson@xyz.com', 'Yes', 'Toronto', 'M4S2N2'),
    (5, 'Isabella', 'Jackson', 'isabella.jackson@xyz.com', 'Yes', 'Toronto', 'M6J2W6'),
    (6, 'Ethan', 'Smith', 'ethan.smith@abc.com', 'Yes', 'Toronto', 'M9V1M6'),
    (7, 'Sophia', 'Lee', 'sophia.lee@xyz.com', 'Yes', 'Vancouver', 'V7M1W2'),
    (8, 'Oliver', 'Robinson', 'oliver.robinson@abc.com', 'Yes', 'Toronto', 'M5R2E2'),
    (9, 'Charlotte', 'Scott', 'charlotte.scott@abc.com', 'Yes', 'Vancouver', 'V5J2R5'),
    (10, 'Lucas', 'Wright', 'lucas.wright@abc.com', 'Yes', 'Montréal', 'H9P2J4'),
    (11, 'Amelia', 'Walker', 'amelia.walker@abc.com', 'No', 'Montréal', 'H4L4G4'),
    (12, 'Mason', 'Woodford', 'mason.woodford@abc.com', 'Yes', 'Toronto', 'M6J1A5'),
    (13, 'Harper', 'Hall', 'harper.hall@xyz.com', 'Yes', 'Toronto', 'M4J1B5'),
    (14, 'Andy', 'Chang', 'andy.chang@xyz.com', 'Yes', 'Toronto', 'M6R2N6'),
    (15, 'Evelyn', 'Allen', 'evelyn.allen@xyz.com', 'No', 'Vancouver', 'V1G1T7'),
    (16, 'Elijah', 'King', 'elijah.king@xyz.com', 'Yes', 'Toronto', 'M5R1J5'),
	(17, 'Avery', 'Lowe', 'avery.lowe@abc.com', 'Yes', 'Toronto', 'M3A3R9'), 
	(18, 'Mia', 'Adams', 'mia.adams@abc.com', 'No', 'Toronto', 'M1K4K4'),
	(19, 'Jayden', 'Wayne', 'jayden.wayne@abc.com', 'Yes', 'Toronto', 'M4N2L2'),
	(20, 'Zara', 'Ali', 'zara.ali@abc.com', 'Yes', 'Toronto', 'M5E1E1'),
    (21, 'Chloe', 'Mitchell', 'chloe.mitchell@abc.com', 'Yes', 'Toronto', 'M5S1X6'),
    (22,'Julien', 'Bilodeau', 'julien.bilodeau@abc.com', 'Yes', 'Montréal', 'H2T2W9'),
    (23, 'Simon', 'Baker', 'simon.baker@abc.com', 'Yes', 'Montréal', 'H2C2S7'),
    (24, 'Gabriel', 'Lindenberg', 'gabriel.lindenberg@abc.com', 'Yes', 'Montréal', 'H2C2S7'),
    (25, 'Mia', 'Crane', 'mia.crane@abc.com', 'Yes', 'Vancouver', 'V6H2M6'); 

INSERT INTO 
		email_newsletter (email_address, first_name, last_name, email_send_date, contents, email_opened, click_through)

VALUES 
    ('john.doe@xyz.com', 'John', 'Doe', '2023-04-12 08:00:00', 'Sign up and Save on Our Best Finds, SIGNUP11', 'Yes', 'Yes'),
    ('tim.nguyen@xyz.com', 'Tim', 'Nguyen', '2023-04-12 08:00:00', 'Sign up and Save on Our Best Finds, SIGNUP11', 'Yes', 'No'),
    ('avery.thompson@abc.com', 'Avery', 'Thompson', '2023-04-12 08:00:00', 'Sign up and Save on Our Best Finds, SIGNUP11', 'Yes', 'Yes'),
    ('andy.chang@xyz.com', 'Andy', 'Chang', '2023-04-12 08:00:00', 'Sign up and Save on Our Best Finds, SIGNUP11', 'Yes', 'Yes'),
    ('lily.patel@xyz.com', 'Lily', 'Patel', '2023-04-12 08:00:00', 'Sign up and Save on Our Best Finds, SIGNUP11', 'Yes', 'No'),
    ('ethan.smith@abc.com', 'Ethan', 'Smith', '2023-04-12 08:00:00', 'Sign up and Save on Our Best Finds, SIGNUP11', 'No', 'No'),
    ('olivia.fung@abc.com', 'Olivia', 'Fung', '2023-04-12 08:00:00', 'Sign up and Save on Our Best Finds, SIGNUP11', 'Yes', 'No'),
    ('chloe.mitchell@abc.com', 'Chloe', 'Mitchell', '2023-05-08 08:00:00', 'Our Sale Starts Now!, SPRING2023', 'Yes', 'Yes'),
    ('zara.ali@xyz.com', 'Zara', 'Ali', '2023-05-08 08:00:00', 'Our Sale Starts Now!, SPRING2023', 'No', 'No'),
    ('elise.kim@abc.com', 'Elise', 'Kim', '2023-05-08 08:00:00', 'Our Sale Starts Now!, SPRING2023', 'Yes', 'No'),
    ('emma.baker@xyz.com', 'Emma', 'Baker', '2023-05-08 08:00:00', 'Our Sale Starts Now!, SPRING2023', 'Yes', 'Yes'),
    ('tarek.hassan@xyz.com', 'Tarek', 'Hassan', '2023-05-08 08:00:00', 'Our Sale Starts Now!, SPRING2023', 'No', 'No'),
    ('john.doe@xyz.com', 'John', 'Doe', '2023-05-08 08:00:00', 'Our Sale Starts Now!, SPRING2023', 'Yes', 'Yes'),
    ('jayden.wayne@abc.com', 'Jayden', 'Wayne', '2023-05-08 08:00:00', 'Our Sale Starts Now!, SPRING2023', 'Yes', 'Yes'),
    ('marcus.kim@abc.com', 'Marcus', 'Kim', '2023-05-08 08:00:00', 'Our Sale Starts Now!, SPRING2023', 'No', 'No'),
    ('jackson.white@xyz.com', 'Jackson', 'White', '2023-05-08 08:00:00', 'Our Sale Starts Now!, SPRING2023', 'No', 'No'),
    ('camille.belanger@abc.com', 'Camille', 'Bélanger', '2023-05-08 08:00:00', 'Our Sale Starts Now!, SPRING2023', 'Yes', 'No'),
    ('avery.thompson@abc.com', 'Avery', 'Thompson', '2023-05-08 08:00:00', 'Our Sale Starts Now!, SPRING2023', 'Yes', 'No'),
    ('andy.chang@xyz.com', 'Andy', 'Chang', '2023-05-08 08:00:00', 'Our Sale Starts Now!, SPRING2023', 'Yes', 'Yes'),
    ('mason.woodford@abc.com', 'Mason', 'Woodford', '2023-05-08 08:00:00', 'Our Sale Starts Now!, SPRING2023', 'Yes', 'Yes');