CREATE TABLE Team (
    team_id int PRIMARY KEY auto_increment,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES Project(project_id)
);

INSERT INTO Team (name, description, project_id)
VALUES ('Разработка Frontend', 'Команда, занимающаяся разработкой клиентской части продукта.', 1);
INSERT INTO Team (name, description, project_id)
VALUES ('Разработка Backend', 'Команда, ответственная за серверную часть продукта.', 1);
INSERT INTO Team (name, description, project_id)
VALUES ('Продуктовый менеджмент', 'Команда, управляющая разработкой продукта и планированием.', 2);
INSERT INTO Team (name, description, project_id)
VALUES ('QA и тестирование', 'Команда, обеспечивающая качество и тестирование продукта.', 2);
INSERT INTO Team (name, description, project_id)
VALUES ('Дизайн и UX', 'Команда дизайнеров, работающая над пользовательским интерфейсом.', 3);
INSERT INTO Team (name, description, project_id)
VALUES ('Техническая поддержка', 'Команда поддержки, помогающая пользователям с техническими вопросами.', 3);
INSERT INTO Team (name, description)
VALUES ('Маркетинг и реклама', 'Команда, занимающаяся маркетингом и продвижением продукта.');
