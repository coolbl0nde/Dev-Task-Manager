CREATE TABLE Priority(
	priority_id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

INSERT INTO Priority (name) VALUES ('Низкий');
INSERT INTO Priority (name) VALUES ('Средний');
INSERT INTO Priority (name) VALUES ('Высокий');
INSERT INTO Priority (name) VALUES ('Критический');