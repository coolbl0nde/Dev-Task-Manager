CREATE TABLE Status(
	status_id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

INSERT INTO Status (name) VALUES ('Открыт');
INSERT INTO Status (name) VALUES ('В работе');
INSERT INTO Status (name) VALUES ('На паузе');
INSERT INTO Status (name) VALUES ('Завершен');
INSERT INTO Status (name) VALUES ('Отложен');
