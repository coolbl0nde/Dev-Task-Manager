CREATE TABLE Role (
	role_id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(50) NOT NULL
);

INSERT INTO Role (name) VALUES ('developer');
INSERT INTO Role (name) VALUES ('admin');
INSERT INTO Role (name) VALUES ('project manager');