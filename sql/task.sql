CREATE TABLE Task (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    status_id INT,
    deadline DATE,
    assignee_id INT,
    sprint_id INT,
    priority_id INT,
    hours_spent FLOAT,
    FOREIGN KEY (assignee_id) REFERENCES User(user_id),
    FOREIGN KEY (sprint_id) REFERENCES Sprint(sprint_id),
    FOREIGN KEY (status_id) REFERENCES Status(status_id),
    FOREIGN KEY (priority_id) REFERENCES Priority(priority_id)
);

INSERT INTO Task (name, description, status_id, deadline, assignee_id, sprint_id, priority_id, hours_spent)
VALUES ('Разработка интерфейса', 'Разработка пользовательского интерфейса для модуля A.', 1, '2023-01-20', 1, 1, 2, 15.5);
INSERT INTO Task (name, description, status_id, deadline, assignee_id, sprint_id, priority_id, hours_spent)
VALUES ('Тестирование API', 'Проведение комплексного тестирования RESTful API.', 2, '2023-01-25', 2, 1, 3, 20.0);
INSERT INTO Task (name, description, status_id, deadline, assignee_id, sprint_id, priority_id, hours_spent)
VALUES ('Документация проекта', 'Создание технической документации для новых функций.', 3, '2023-02-10', 3, 2, 1, 10.0);
