CREATE TABLE Sprint(
	sprint_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE,
    description TEXT
);

INSERT INTO Sprint (name, start_date, end_date, description)
VALUES ('Разработка функционала A', '2023-01-10', '2023-01-24', 'Разработка и тестирование нового функционала A.');
INSERT INTO Sprint (name, start_date, end_date, description)
VALUES ('Интеграция системы B', '2023-02-01', '2023-02-15', 'Работа над интеграцией внешней системы B.');
INSERT INTO Sprint (name, start_date, end_date, description)
VALUES ('Оптимизация производительности', '2023-03-05', '2023-03-19', 'Улучшение производительности ключевых компонентов системы.');
INSERT INTO Sprint (name, start_date, end_date, description)
VALUES ('Рефакторинг кодовой базы', '2023-04-10', '2023-04-24', 'Процесс рефакторинга и улучшения структуры существующего кода.');
