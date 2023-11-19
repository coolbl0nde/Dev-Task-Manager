CREATE TABLE Tag (
    tag_id int PRIMARY KEY auto_increment,
    name VARCHAR(100) NOT NULL,
    descriprion TEXT NOT NULL
);

INSERT INTO Tag (name, descriprion)
VALUES
('Новая Функциональность', 'Задачи по разработке новых функций или возможностей.'),
('Ошибка', 'Задачи, связанные с исправлением ошибок.'),
('Улучшение', 'Задачи, направленные на улучшение существующих функций.');
