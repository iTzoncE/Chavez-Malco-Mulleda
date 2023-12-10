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
 
