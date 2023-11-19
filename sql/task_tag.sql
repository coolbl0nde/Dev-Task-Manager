CREATE TABLE Task_Tag (
    task_id INT,
    tag_id INT,
    FOREIGN KEY (task_id) REFERENCES Task(task_id),
	FOREIGN KEY (tag_id) REFERENCES Tag(tag_id)
);

INSERT INTO Task_Tag (task_id, tag_id)
VALUES
(1, 1),
(1, 3),
(2, 2),
(3, 3);
