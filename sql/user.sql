CREATE TABLE User (
    user_id INT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    role_id INT,
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES Team(team_id),
    FOREIGN KEY (role_id) REFERENCES Role(role_id)
);

INSERT INTO User (user_id, username, email, password, first_name, last_name, role_id, team_id)
VALUES (1, 'user1', 'user1@example.com', 'password1', 'Иван', 'Иванов', 1, 1);
INSERT INTO User (user_id, username, email, password, first_name, last_name, role_id, team_id)
VALUES (2, 'user2', 'user2@example.com', 'password2', 'Елена', 'Петрова', 2, 1);
INSERT INTO User (user_id, username, email, password, first_name, last_name, role_id, team_id)
VALUES (3, 'user3', 'user3@example.com', 'password3', 'Алексей', 'Сидоров', 3, 2);
