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

Create table Question (
	questionId int NOT NULL primary key,
	[content] varchar(100) NOT NULL,
	quizId int NOT NULL,
    FOREIGN KEY (quizId) REFERENCES quiz(quizid)
)

Create table Answer (
	answerId int NOT NULL primary key,
	[content] varchar(100) NOT NULL,
	isCorrectAnswer bit NULL,
	questionId int NOT NULL
	FOREIGN KEY (questionId) REFERENCES Question(questionId)
)

Create table QuestionQuiz (
	QuestionQuizId int NOT NULL primary key,
	quizId int NOT NULL,
    FOREIGN KEY (quizId) REFERENCES quiz(quizid),
	questionId int NOT NULL,
	FOREIGN KEY (questionId) REFERENCES Question(questionId)
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

-- Inserting sample questions
INSERT INTO Question (questionId, [content], quizId)
VALUES
    (1, 'What is the capital of France?', 1),
    (2, 'Who painted the Mona Lisa?', 1),
    (3, 'What is the symbol for hydrogen?', 1),
    (4, 'What is the largest planet in our solar system?', 1),
    (5, 'What is the tallest mountain in the world?', 1),
    (6, 'Who wrote the play "Hamlet"?', 1),
    (7, 'What is the chemical formula for water?', 1),
    (8, 'Which country is known as the Land of the Rising Sun?', 1),
    (9, 'Who discovered gravity?', 1),
    (10, 'What is the largest ocean on Earth?', 1),
    (11, 'What is the national flower of India?', 2),
    (12, 'Who painted the Sistine Chapel ceiling?', 2),
    (13, 'What is the largest desert in the world?', 2),
    (14, 'Who is the author of "Pride and Prejudice"?', 2),
    (15, 'What is the chemical symbol for gold?', 2),
    (16, 'What is the currency of Japan?', 2),
    (17, 'What is the longest river in the world?', 2),
    (18, 'Who invented the telephone?', 2),
    (19, 'What is the largest continent on Earth?', 2),
    (20, 'Who wrote the novel "To Kill a Mockingbird"?', 2),
    (21, 'What is the speed of light in a vacuum?', 3),
    (22, 'Who is the Greek god of the sea?', 3),
    (23, 'What is the largest country in the world by land area?', 3),
    (24, 'Who is the author of "1984"?', 3),
    (25, 'What is the chemical formula for table salt?', 3),
    (26, 'Which planet is known as the Red Planet?', 3),
    (27, 'Who painted the "Starry Night"?', 3),
    (28, 'What is the currency of the United Kingdom?', 3),
    (29, 'What is the unit of electric current?', 3),
    (30, 'Who is the author of "The Great Gatsby"?', 3);

-- Inserting sample answers
INSERT INTO Answer (answerId, [content], isCorrectAnswer, questionId)
VALUES
    (1, 'Paris', 1, 1),
    (2, 'London', 0, 1),
    (3, 'Rome', 0, 1),
    (4, 'Leonardo da Vinci', 1, 2),
    (5, 'Pablo Picasso', 0, 2),
    (6, 'Vincent van Gogh', 0, 2),
    (7, 'H', 1, 3),
    (8, 'He', 0, 3),
    (9, 'O', 0, 3),
    (10, 'Jupiter', 1, 4),
    (11, 'Saturn', 0, 4),
    (12, 'Mars', 0, 4),
    (13, 'Mount Everest', 1, 5),
    (14, 'K2', 0, 5),
    (15, 'Kangchenjunga', 0, 5),
    (16, 'William Shakespeare', 1, 6),
    (17, 'Arthur Miller', 0, 6),
    (18, 'Henrik Ibsen', 0, 6),
    (19, 'H2O', 1, 7),
    (20, 'CO2', 0, 7),
    (21, 'NaCl', 0, 7),
    (22, 'Japan', 1, 8),
    (23, 'China', 0, 8),
    (24, 'South Korea', 0, 8),
    (25, 'Isaac Newton', 1, 9),
    (26, 'Albert Einstein', 0, 9),
    (27, 'Galileo Galilei', 0, 9),
    (28, 'Pacific Ocean', 1, 10),
    (29, 'Atlantic Ocean', 0, 10),
    (30, 'Indian Ocean', 0, 10),
    (31, 'Lotus', 1, 11),
    (32, 'Rose', 0, 11),
    (33, 'Tulip', 0, 11),
    (34, 'Michelangelo', 1, 12),
    (35, 'Raphael', 0, 12),
    (36, 'Donatello', 0, 12),
    (37, 'Sahara', 1, 13),
    (38, 'Gobi', 0, 13),
    (39, 'Atacama', 0, 13),
    (40, 'Jane Austen', 1, 14),
    (41, 'Charlotte Brontë', 0, 14),
    (42, 'Emily Dickinson', 0, 14),
    (43, 'Au', 1, 15),
    (44, 'Ag', 0, 15),
    (45, 'Cu', 0, 15),
    (46, 'Japanese Yen', 1, 16),
    (47, 'Euro', 0, 16),
    (48, 'Pound Sterling', 0, 16),
    (49, 'Nile', 1, 17),
    (50, 'Amazon', 0, 17),
    (51, 'Mississippi', 0, 17),
    (52, 'Alexander Graham Bell', 1, 18),
    (53, 'Thomas Edison', 0, 18),
    (54, 'Nikola Tesla', 0, 18),
    (55, 'Asia', 1, 19),
    (56, 'Africa', 0, 19),
    (57, 'North America', 0, 19),
    (58, 'Harper Lee', 1, 20),
    (59, 'J.D. Salinger', 0, 20),
    (60, 'F. Scott Fitzgerald', 0, 20),
    (61, '299,792,458 meters per second', 1, 21),
    (62, '123,456,789 meters per second', 0, 21),
    (63, '987,654,321 meters per second', 0, 21),
    (64, 'Poseidon', 1, 22),
    (65, 'Zeus', 0, 22),
    (66, 'Hades', 0, 22),
    (67, 'Russia', 1, 23),
    (68, 'Canada', 0, 23),
    (69, 'China', 0, 23),
    (70, 'George Orwell', 1, 24),
    (71, 'Aldous Huxley', 0, 24),
    (72, 'Ray Bradbury', 0, 24),
    (73, 'NaCl', 1, 25),
    (74, 'H2O2', 0, 25),
    (75, 'CO2', 0, 25),
    (76, 'Mars', 1, 26),
    (77, 'Venus', 0, 26),
    (78, 'Mercury', 0, 26),
    (79, 'Vincent van Gogh', 1, 27),
    (80, 'Pablo Picasso', 0, 27),
    (81, 'Claude Monet', 0, 27),
    (82, 'British Pound', 1, 28),
    (83, 'US Dollar', 0, 28),
    (84, 'Euro', 0, 28),
    (85, 'Ampere', 1, 29),
    (86, 'Ohm', 0, 29),
    (87, 'Volt', 0, 29),
    (88, 'F. Scott Fitzgerald', 1, 30),
    (89, 'Ernest Hemingway', 0, 30),
    (90, 'J.K. Rowling', 0, 30);

select * from Account

select * from Category
where categoryId = '1'

select * from Course
where courseId = '1'

select * from quiz
where courseId = '1'

select * from Question

select * from Answer

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

