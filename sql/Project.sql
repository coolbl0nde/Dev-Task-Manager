CREATE TABLE Project (
	project_id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    start_date date DEFAULT (CURRENT_DATE),
    end_date date,
    customer_id int,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE
);

INSERT INTO Project (name, start_date, end_date, customer_id) VALUES ('Онлайн-магазин', "2023-09-01", '2024-03-31', 1);
INSERT INTO Project (name, start_date, end_date, customer_id) VALUES ('Мобильное приложение для Android', '2023-10-15', '2024-05-30', 2);
INSERT INTO Project (name, start_date, end_date, customer_id) VALUES ('ПО для управления серверами', '2023-11-01', '2024-08-31', 3);