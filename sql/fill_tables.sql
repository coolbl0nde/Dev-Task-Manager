INSERT INTO Role (name) VALUES ('developer');
INSERT INTO Role (name) VALUES ('admin');
INSERT INTO Role (name) VALUES ('project manager');

INSERT INTO Customer (name, contact_info) VALUES ('John Doe', "johndoe@email.com");
INSERT INTO Customer (name, contact_info) VALUES ('Company XYZ', 'info@companyxyz.com');
INSERT INTO Customer (name, contact_info) VALUES ('Alice Webber', 'alice.webber@example.com');


INSERT INTO Project (name, start_date, end_date, customer_id) VALUES ('Онлайн-магазин', "2023-09-01", '2024-03-31', 1);
INSERT INTO Project (name, start_date, end_date, customer_id) VALUES ('Мобильное приложение для Android', '2023-10-15', '2024-05-30', 2);
INSERT INTO Project (name, start_date, end_date, customer_id) VALUES ('ПО для управления серверами', '2023-11-01', '2024-08-31', 3);

INSERT INTO Team (name, description, project_id)
VALUES 
('Разработка Frontend', 'Команда, занимающаяся разработкой клиентской части продукта.', 1),
('Разработка Backend', 'Команда, ответственная за серверную часть продукта.', 1),
('Продуктовый менеджмент', 'Команда, управляющая разработкой продукта и планированием.', 2),
('QA и тестирование', 'Команда, обеспечивающая качество и тестирование продукта.', 2),
('Дизайн и UX', 'Команда дизайнеров, работающая над пользовательским интерфейсом.', 3),
('Техническая поддержка', 'Команда поддержки, помогающая пользователям с техническими вопросами.', 3),
('Маркетинг и реклама', 'Команда, занимающаяся маркетингом и продвижением продукта.');

INSERT INTO User (user_id, username, email, password, first_name, last_name, role_id, team_id)
VALUES 
(1, 'user1', 'user1@example.com', 'password1', 'Иван', 'Иванов', 1, 1),
(2, 'user2', 'user2@example.com', 'password2', 'Елена', 'Петрова', 2, 1),
(3, 'user3', 'user3@example.com', 'password3', 'Алексей', 'Сидоров', 3, 2);

INSERT INTO Comment (text, created_at, task_id, user_id)
VALUES
('Это комментарий к задаче 1 от пользователя 1.', CURRENT_TIMESTAMP, 1, 1),
('Еще один комментарий к задаче 1, но от другого пользователя.', CURRENT_TIMESTAMP, 1, 2),
('Комментарий к задаче 2 от пользователя 1.', CURRENT_TIMESTAMP, 2, 1);

INSERT INTO Sprint (name, start_date, end_date, description)
VALUES 
('Разработка функционала A', '2023-01-10', '2023-01-24', 'Разработка и тестирование нового функционала A.'),
('Интеграция системы B', '2023-02-01', '2023-02-15', 'Работа над интеграцией внешней системы B.'),
('Оптимизация производительности', '2023-03-05', '2023-03-19', 'Улучшение производительности ключевых компонентов системы.'),
('Рефакторинг кодовой базы', '2023-04-10', '2023-04-24', 'Процесс рефакторинга и улучшения структуры существующего кода.');

INSERT INTO Attachment (name, type, task_id)
VALUES
('specification.pdf', 'PDF', 1),
('design_mockup.png', 'Image', 1),
('error_log.txt', 'Text', 2);

INSERT INTO Priority (name) VALUES ('Низкий');
INSERT INTO Priority (name) VALUES ('Средний');
INSERT INTO Priority (name) VALUES ('Высокий');
INSERT INTO Priority (name) VALUES ('Критический');

INSERT INTO Status (name) VALUES ('Открыт');
INSERT INTO Status (name) VALUES ('В работе');
INSERT INTO Status (name) VALUES ('На паузе');
INSERT INTO Status (name) VALUES ('Завершен');
INSERT INTO Status (name) VALUES ('Отложен');

INSERT INTO Tag (name, descriprion)
VALUES
('Новая Функциональность', 'Задачи по разработке новых функций или возможностей.'),
('Ошибка', 'Задачи, связанные с исправлением ошибок.'),
('Улучшение', 'Задачи, направленные на улучшение существующих функций.');

INSERT INTO Task_Tag (task_id, tag_id)
VALUES
(1, 1),
(1, 3),
(2, 2),
(3, 3);

INSERT INTO Task (name, description, status_id, deadline, assignee_id, sprint_id, priority_id, hours_spent)
VALUES 
('Разработка интерфейса', 'Разработка пользовательского интерфейса для модуля A.', 1, '2023-01-20', 1, 1, 2, 15.5),
('Тестирование API', 'Проведение комплексного тестирования RESTful API.', 2, '2023-01-25', 2, 1, 3, 20.0),
('Документация проекта', 'Создание технической документации для новых функций.', 3, '2023-02-10', 3, 2, 1, 10.0);
