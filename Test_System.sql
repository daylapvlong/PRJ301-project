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

CREATE TABLE quiz (
  quizid int NOT NULL primary key,
  quizname varchar(100) NOT NULL,
  numOfQuestion int NOT NULL,
  dateCreated date NOT NULL,
  timeLimit time NOT NULL,
  courseId int NOT NULL,
  FOREIGN KEY (courseId) REFERENCES Course(courseId)
)

INSERT INTO Account (name, email, password, isStudent, isTeacher)
VALUES ('John Doe', 'johndoe@example.com', 'password123', 1, 0),
       ('Jane Doe', 'janedoe@example.com', 'password456', 1, 0),
       ('Bob Smith', 'bobsmith@example.com', 'password789', 0, 1);


INSERT INTO Course (courseId, courseName, description, Id, categoryId)
VALUES (1, 'MAE101', 'Introduction to calculus', 1, 1),
       (2, 'CSI104', 'Introduction to Computer Science', 1, 1),
       (3, 'PRF192', 'Programming fundamentals', 1, 1),
	   (4, 'CEA201', 'Computer Organization and Architecture', 1, 1),
		(5, 'MAD101', 'Discrete mathematics', 1, 2),
       (6, 'SG103 ', 'Communication and In-Group Working Skills', 1, 2),
       (7, 'PR0192', 'Object-Oriented Programming', 1, 2),
	   (8, 'OSG202', 'Operating Systems', 1, 2),
	   (9, 'CSD201', 'Data Structures and Algorithms', 1, 3),
       (10, 'JPD111 ', 'Elementary Japanese 1.1', 1, 3),
       (11, 'LAB211', 'OOP with Java Lab', 1, 3),
	   (12, 'DBI202', 'Introduction to Databases', 1, 3),
	   (13, 'PRJ301', 'Web-Based Java Applications', 1, 4),
       (14, 'MAS291 ', 'Statistics & Probability', 1, 4),
       (15, 'IOT102', 'Internet of Things', 1, 4),
	   (16, 'JPD123', 'Elementary Japanese 1-A1.2', 1, 4),
	   (17, 'SSL101c', 'Studying skill', 1, 1),
	   (18, 'NWC203c', 'Computer Networking', 1, 2),
	   (19, 'WED201c', 'Web Design', 1, 3),
	   (20, 'NWC202', 'Computer Networking', 1, 4),
	   (21, 'SSG101', 'Working in Group Skills', 1, 1),
	   (22, 'PRO201', 'Front-end Web Development', 1, 2),
	   (23, 'PRJ311', 'Desktop Java Applications', 1, 3),
	   (24, 'PRJ311', 'Introduction to Information Assurance', 1, 3),
	   (25, 'PRP201c ', 'Python programming', 1, 3),
	   (26, 'SWE102', 'Introduction to Software Engineering', 1, 4),
	   (27, 'MAI391', 'Advanced mathematics', 1, 4),
	   (28, 'AIG201c', 'Artificial Intelligence',1,4);
	   

INSERT INTO Category (categoryId, categoryName)
VALUES (1, 'Semester 1'),
       (2, 'Semester 2'),
       (3, 'Semester 3'),
	   (4, 'Semester 4');


INSERT INTO quiz (quizid, quizname, numOfQuestion, dateCreated, timeLimit, courseId)
VALUES  (1, 'PT1', 10, '2023-06-13' ,'00:30:00',1),
		(2, 'PT2', 20, '2023-06-15', '00:30:00', 1),
		(3, 'FE', 20, '2023-06-15', '00:30:00',1),
		(4, 'PT1', 10, '2023-06-13', '00:30:00', 2),
		(5, 'PT2', 20, '2023-06-15', '00:30:00', 2),
		(6, 'FE', 20, '2023-06-15', '00:30:00', 2),
		(7, 'PT1', 10, '2023-06-13', '00:30:00', 3),
		(8, 'PT2', 20, '2023-06-15', '00:30:00', 3),
		(9, 'FE', 20, '2023-06-15', '00:30:00', 3),
		(10, 'PT1', 10, '2023-06-13', '00:30:00', 4),
		(11, 'PT2', 20, '2023-06-15', '00:30:00', 4),
		(12, 'FE', 20, '2023-06-15', '00:30:00', 4);

select * from Account

select * from Category
where categoryId = '1'

select * from Course
where courseId = '1'

select * from quiz
where courseId = '1'

ALTER TABLE Course
DROP CONSTRAINT id;

ALTER TABLE Course
DROP CONSTRAINT categoryId;

ALTER TABLE quiz
DROP CONSTRAINT courseId;

Drop table Account

Drop table Category

Drop table Course

Drop table quiz

