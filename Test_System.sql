Create table Account (
	Id int primary key IDENTITY(1,1),
	name varchar(255),
	email varchar(255),
	password varchar(255),
	isStudent int,
	isTeacher int
)

Create table Category (
	categoryId int primary key,
	categoryName varchar(255)
)

Create table Course (
	courseId int primary key,
	courseName varchar(255),
	description varchar(500),
	Id int,
	FOREIGN KEY (id) REFERENCES Account(Id),
	categoryId int,
	FOREIGN KEY (categoryId) REFERENCES Category(categoryId)
)

INSERT INTO Account (name, email, password, isStudent, isTeacher)
VALUES ('John Doe', 'johndoe@example.com', 'password123', 1, 0),
       ('Jane Doe', 'janedoe@example.com', 'password456', 1, 0),
       ('Bob Smith', 'bobsmith@example.com', 'password789', 0, 1);

INSERT INTO Course (courseId, courseName, description, Id, categoryId)
VALUES (1, 'MAE101', 'Introduction to calculus', 1, 1),
       (2, 'CSI104', 'Introduction to Computer Science', 2, 1),
       (3, 'PRF192', 'Programming fundamentals', 3, 1),
	   (4, 'CEA201', 'Computer Organization and Architecture', 2, 1),
		(5, 'MAD101', 'Discrete mathematics', 1, 2),
       (6, 'SG103 ', 'Communication and In-Group Working Skills', 2, 2),
       (7, 'PR0192', 'Object-Oriented Programming', 3, 2),
	   (8, 'OSG202', 'Operating Systems', 2, 2),
	   (9, 'CSD201', 'Data Structures and Algorithms', 1, 3),
       (10, 'JPD111 ', 'Elementary Japanese 1.1', 2, 3),
       (11, 'LAB211', 'OOP with Java Lab', 3, 3),
	   (12, 'DBI202', 'Introduction to Databases', 2, 3),
	   (13, 'PRJ301', 'Web-Based Java Applications', 1, 4),
       (14, 'MAS291 ', 'Statistics & Probability', 2, 4),
       (15, 'IOT102', 'Internet of Things', 3, 4),
	   (16, 'JPD123', 'Elementary Japanese 1-A1.2', 2, 4);


INSERT INTO Category (categoryId, categoryName)
VALUES (1, 'Semester 1'),
       (2, 'Semester 2'),
       (3, 'Semester 3'),
	   (4, 'Semester 4');

select * from Account

select * from Category

select * from Course

Drop table Account

Drop table Category

Drop table Course