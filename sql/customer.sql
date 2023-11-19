CREATE TABLE Customer (
	customer_id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    contact_info varchar(250)
);

INSERT INTO Customer (name, contact_info) VALUES ('John Doe', "johndoe@email.com");
INSERT INTO Customer (name, contact_info) VALUES ('Company XYZ', 'info@companyxyz.com');
INSERT INTO Customer (name, contact_info) VALUES ('Alice Webber', 'alice.webber@example.com');