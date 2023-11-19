CREATE TABLE Attachment (
    attachment_id int PRIMARY KEY auto_increment,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    task_id INT,
    FOREIGN KEY (task_id) REFERENCES Task(task_id)
);

INSERT INTO Attachment (name, type, task_id)
VALUES
('specification.pdf', 'PDF', 1),
('design_mockup.png', 'Image', 1),
('error_log.txt', 'Text', 2);
