CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) UNIQUE
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    user_id INT UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100),
    description TEXT
);

CREATE TABLE TaskCategories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE TaskStatus (
    status_id INT PRIMARY KEY,
    status_name VARCHAR(100)
);

CREATE TABLE Tasks (
    task_id INT PRIMARY KEY,
    task_name VARCHAR(100),
    description TEXT,
    due_date DATE,
    priority VARCHAR(50),
    student_id INT,
    subject_id INT,
    category_id INT,
    status_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id),
    FOREIGN KEY (category_id) REFERENCES TaskCategories(category_id),
    FOREIGN KEY (status_id) REFERENCES TaskStatus(status_id)
);

INSERT INTO Users (user_id, username) 
VALUES 
    (01, 'user_01'),
    (02, 'user_02'),
    (03, 'user_03'),
    (04, 'user_04'),
    (05, 'user_05'),
    (06, 'user_06'),
    (07, 'user_07'),
    (08, 'user_08'),
    (09, 'user_09'),
    (10, 'user_10');

INSERT INTO Students (student_id, user_id, first_name, last_name, email) 
VALUES 
    (01, 01, 'John', 'Cruz', 'john@gmail.com'),
    (02, 02, 'Jane', 'Smith', 'jane@gmail.com'),
    (03, 03, 'Daniel', 'Padilla', 'daniel@gmail.com'),
    (04, 04, 'Michael', 'Jordan', 'michael@gmail.com'),
    (05, 05, 'JR', 'Smith', 'jr@gmail.com'),
    (06, 06, 'Kathryn', 'Bernardo', 'kath@gmail.com'),
    (07, 07, 'Austin', 'Reeves', 'austin@gmail.com'),
    (08, 08, 'Josh', 'Hutcherson', 'josh@gmail.com'),
    (09, 09, 'James', 'Cameron', 'james@gmail.com'),
    (10, 10, 'Chito', 'Miranda', 'chito@gmail.com');

INSERT INTO Subjects (subject_id, subject_name, description) 
VALUES 
    (101, 'Art', 'Visual arts and creativity'),
    (102, 'Physical Education', 'Sports and fitness activities'),
    (103, 'Geography', 'Study of Earth and its features'),
    (104, 'Music', 'Theory and practice of music'),
    (105, 'Foreign Language', 'Learning a new language'),
    (106, 'Economics', 'Study of production, consumption, and transfer of wealth'),
    (107, 'Psychology', 'Understanding behavior and mind'),
    (108, 'Sociology', 'Study of society and human behavior'),
    (109, 'Political Science', 'Analysis of political systems'),
    (110, 'Environmental Science', 'Study of the environment and ecosystems');

INSERT INTO TaskCategories (category_id, category_name) 
VALUES 
    (101, 'Exam'),
    (102, 'Project'),
    (103, 'Homework');	

INSERT INTO TaskStatus (status_id, status_name) 
VALUES 
    (11, 'Not Started'),
    (22, 'In Progress'),
    (33, 'Completed');

INSERT INTO Tasks (task_id, task_name, description, due_date, priority, student_id, subject_id, category_id, status_id) 
VALUES 
    (11, 'Art Project: Sketch Initial Designs', 'Create initial sketches for the art project', '2023-12-20', 'High', 01, 101, 102, 11),
    (12, 'Physical Education: Prepare Sports Presentation', 'Prepare a presentation on various sports', '2023-12-25', 'Medium', 02, 102, 103, 22),
    (13, 'Geography: Study World Maps', 'Study and memorize world maps and geographical features', '2023-12-22', 'Medium', 03, 103, 101, 33),
    (14, 'Music: Practice Piano Scales', 'Practice major and minor scales on the piano', '2023-12-18', 'Low', 04, 104, 103, 22),
    (15, 'Foreign Language: Learn New Vocabulary', 'Study and learn new vocabulary words in a foreign language', '2023-12-28', 'High', 05, 105, 101, 11),
    (16, 'Economics: Research Economic Policies', 'Research and gather information on economic policies', '2023-12-30', 'Medium', 06, 106, 103, 22),
    (17, 'Psychology: Read Behavioral Studies', 'Read and summarize recent behavioral studies', '2023-12-23', 'High', 07, 107, 103, 33),
    (18, 'Sociology: Analyze Social Structures', 'Analyze and write about different social structures', '2023-12-26', 'Low',08, 108, 101, 22),
    (19, 'Political Science: Review Political Systems', 'Review different political systems around the world', '2023-12-21', 'Medium', 09, 109, 101,11),
    (20, 'Environmental Science: Study Ecosystems', 'Study and research different ecosystems and their components', '2023-12-29', 'High', 10, 110, 101, 22);