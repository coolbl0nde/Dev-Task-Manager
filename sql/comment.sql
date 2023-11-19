CREATE TABLE Comment (
    comment_id int PRIMARY KEY auto_increment,
    text TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    task_id INT,
    user_id INT,
    FOREIGN KEY (task_id) REFERENCES Task(task_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

INSERT INTO Comment (text, created_at, task_id, user_id)
VALUES
('Это комментарий к задаче 1 от пользователя 1.', CURRENT_TIMESTAMP, 1, 1),
('Еще один комментарий к задаче 1, но от другого пользователя.', CURRENT_TIMESTAMP, 1, 2),
('Комментарий к задаче 2 от пользователя 1.', CURRENT_TIMESTAMP, 2, 1);
