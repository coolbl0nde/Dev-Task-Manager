# Dev-Task-Manager

Михалевич Мария 153504

## Функциональные требования

Незарегистрированные пользователь может:
* зарегистрироваться или войти в систему, если у него уже есть учетная запись

Зарегистрированный пользователь:
1. Разработчик может
   * просматривать информацию о задаче, над которой работает
   * оставлять комментарии и прикреплять файлы к задачам
   * добавлять статус к задаче
   * добавлять количество времени, которое было затрачено на задачу
2. Администратор может
   * добавлять/удалять новых пользователей
   * добавлять/удалять/редактировать проекты
   * управлять ролями и правами доступа
3. Клиент может 
   * могут просматривать статус задач
   * оставлять комментарии и загружать файлы
4. Руководители проектов (PM) может
   * то же, что и разработчик
   * управлять задачами и проектами
   * назначать задачи членам команды
   * отслеживать прогресс выполнения
   * создание/изменение спринтов

## Описание сущностей

1. User (Пользователь)
   * user_id (INT, PRIMARY KEY)
   * username (VARCHAR(100), NOT NULL)
   * email (VARCHAR(100), NOT NULL)
   * password (VARCHAR(100), NOT NULL)
   * first_name (VARCHAR(100), NOT NULL)
   * last_name (VARCHAR(100), NOT NULL)
   * role (VARCHAR(50), NOT NULL)
   * team_id (INT, FOREIGN KEY к Team)
2. Team (Команда)
   * team_id (INT, PRIMARY KEY)
   * name (VARCHAR(100), NOT NULL)
   * description (TEXT)
   * project_id (INT, FOREIGN KEY к Project)
   * team_lead_id (INT, FOREIGN KEY к User)
3. Project (Проект)
   * project_id (INT, PRIMARY KEY)
   * name (VARCHAR(100), NOT NULL)
   * description (TEXT)
   * start_date (DATE)
   * end_date (DATE)
   * customer_id (INT, FOREIGN KEY к Customer)
4. Task (Задача)
   * task_id (INT, PRIMARY KEY)
   * name (VARCHAR(100), NOT NULL)
   * description (TEXT)
   * status (VARCHAR(50), NOT NULL)
   * deadline (DATE)
   * assignee_id (INT, FOREIGN KEY к User)
   * sprint_id (INT, FOREIGN KEY к Sprint)
5. Comment (Комментарий)
   * comment_id (INT, PRIMARY KEY)
   * text (TEXT NOT NULL)
   * created_at (TIMESTAMP NOT NULL)
   * user_id (INT, FOREIGN KEY к User)
   * task_id (INT, FOREIGN KEY к Task)
6. Customer (Заказчик)
   * customer_id (INT, PRIMARY KEY)
   * name (VARCHAR(100), NOT NULL)
   * contact_info (TEXT)
7. Attachment (Вложение)
   * attachment_id (INT, PRIMARY KEY)
   * name (VARCHAR(100), NOT NULL)
   * type (VARCHAR(50), NOT NULL)
   * task_id (INT, FOREIGN KEY к Task)
8. Sprint (Спринт)
    * sprint_id (INT, PRIMARY KEY)
    * name (VARCHAR(100), NOT NULL)
    * start_date (DATE)
    * end_date (DATE)
    * description (TEXT)
9. Tag(Тег)
    * tag_id (INT, PRIMARY KEY)
    * name (VARCHAR(100), NOT NULL)
    * description (TEXT)
11. Timesheet (Учет времени)
    * timesheet_id (INT, PRIMARY KEY)
    * user_id (INT, FOREIGN KEY к User)
    * task_id (INT, FOREIGN KEY к Task)
    * start_time (TIMESTAMP NOT NULL)
    * end_time (TIMESTAMP NOT NULL)
    * hours_spent (FLOAT NOT NULL)
    * description (TEXT)
      
Отношения:
* User к Team (One-to-Many): Пользователь может быть членом множества команд, но каждая команда имеет одного лидера.
* Team к Project (One-to-Many): Команда может работать над множеством проектов.
* Project к Task (One-to-Many): Проект может содержать множество задач.
* Customer к Project (One-to-Many): Заказчик может иметь множество проектов.
* Task к Comment (One-to-Many): Задача может иметь множество комментариев.
* Task к Attachment (One-to-Many): Задача может иметь множество вложений.
* Task к Tag/Label (Many-to-Many): Задача может быть связана с множеством меток/тегов, и метки/теги могут быть связаны с множеством задач.
* Sprint к Task (One-to-Many): Спринт может включать множество задач.
* User к Timesheet/Worklog (One-to-Many): Пользователь может иметь множество записей учета времени, но каждая запись учета времени связана с одной задачей.
