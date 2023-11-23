CREATE TABLE Role (
	role_id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(50) NOT NULL
);

CREATE TABLE Customer (
	customer_id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    contact_info varchar(250),
    
    UNIQUE(contact_info)
);

CREATE TABLE Project (
	project_id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    start_date date DEFAULT (CURRENT_DATE),
    end_date date NOT NULL,
    customer_id int,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE Team (
    team_id int PRIMARY KEY auto_increment,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES Project(project_id)
);

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
    FOREIGN KEY (role_id) REFERENCES Role(role_id),
    
    UNIQUE(username, email)
);

CREATE TABLE Comment (
    comment_id int PRIMARY KEY auto_increment,
    text TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    task_id INT,
    user_id INT,
    FOREIGN KEY (task_id) REFERENCES Task(task_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Sprint(
	sprint_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE,
    description TEXT
);

CREATE TABLE Attachment (
    attachment_id int PRIMARY KEY auto_increment,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    task_id INT,
    FOREIGN KEY (task_id) REFERENCES Task(task_id)
);

CREATE TABLE Priority(
	priority_id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE Status(
	status_id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE Tag (
    tag_id int PRIMARY KEY auto_increment,
    name VARCHAR(100) NOT NULL,
    descriprion TEXT NOT NULL
);

CREATE TABLE Task_Tag (
    task_id INT,
    tag_id INT,
    FOREIGN KEY (task_id) REFERENCES Task(task_id),
	FOREIGN KEY (tag_id) REFERENCES Tag(tag_id)
);

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

CREATE INDEX idx_customer_id ON Project(customer_id);

CREATE INDEX idx_project_id ON Team(project_id);

CREATE INDEX idx_team_id ON User(team_id);
CREATE INDEX idx_role_id ON User(role_id);

CREATE INDEX idx_task_id ON Comment(task_id);
CREATE INDEX idx_user_id ON Comment(user_id);

CREATE INDEX idx_task_id ON Attachment(task_id);

CREATE INDEX idx_task_id ON Task_Tag(task_id);
CREATE INDEX idx_tag_id ON Task_Tag(tag_id);

CREATE INDEX idx_assignee_id ON Task(assignee_id);
CREATE INDEX idx_sprint_id ON Task(sprint_id);
CREATE INDEX idx_status_id ON Task(status_id);
CREATE INDEX idx_priority_id ON Task(priority_id);
