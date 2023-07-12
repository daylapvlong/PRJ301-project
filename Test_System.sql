Create table Account (
	Id int primary key IDENTITY(1,1),
	name varchar(255),
	email varchar(255),
	password varchar(255),
	isStudent int,
	isTeacher int
)

Create table Category (
	categoryId int primary key IDENTITY(1,1),
	categoryName varchar(255)
)

Create table Course (
	courseId int primary key IDENTITY(1,1),
	courseName varchar(255),
	description varchar(500),
	categoryId int,
	FOREIGN KEY (categoryId) REFERENCES Category(categoryId)
)

CREATE TABLE quiz (
  quizid int NOT NULL primary key IDENTITY(1,1),
  quizname varchar(100) NOT NULL,
  numOfQuestion int NOT NULL,
  dateCreated date NOT NULL,
  timeLimit time NOT NULL,
  courseId int NOT NULL,
  FOREIGN KEY (courseId) REFERENCES Course(courseId)
)

Create table Question (
	questionId int NOT NULL primary key IDENTITY(1,1), 
	[content] varchar(100) NOT NULL,
	quizId int NOT NULL,
    FOREIGN KEY (quizId) REFERENCES quiz(quizid)
)

Create table Answer (
	answerId int NOT NULL primary key IDENTITY(1,1),
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

INSERT INTO Category (categoryName)
VALUES ('Semester 1'),
       ('Semester 2'),
       ('Semester 3'),
	   ('Semester 4');

INSERT INTO Course (courseName, description, Id, categoryId)
VALUES ('MAE101', 'Introduction to calculus', 1, 1),
       ('CSI104', 'Introduction to Computer Science', 1, 1),
       ('PRF192', 'Programming fundamentals', 1, 1),
       ('CEA201', 'Computer Organization and Architecture', 1, 1),
       ('MAD101', 'Discrete mathematics', 1, 2),
       ('SG103 ', 'Communication and In-Group Working Skills', 1, 2),
       ('PR0192', 'Object-Oriented Programming', 1, 2),
       ('OSG202', 'Operating Systems', 1, 2),
       ('CSD201', 'Data Structures and Algorithms', 1, 3),
       ('JPD111 ', 'Elementary Japanese 1.1', 1, 3),
       ('LAB211', 'OOP with Java Lab', 1, 3),
       ('DBI202', 'Introduction to Databases', 1, 3),
       ('PRJ301', 'Web-Based Java Applications', 1, 4),
       ('MAS291 ', 'Statistics & Probability', 1, 4),
       ('IOT102', 'Internet of Things', 1, 4),
       ('JPD123', 'Elementary Japanese 1-A1.2', 1, 4),
       ('SSL101c', 'Studying skill', 1, 1),
       ('NWC203c', 'Computer Networking', 1, 2),
       ('WED201c', 'Web Design', 1, 3),
       ('NWC202', 'Computer Networking', 1, 4),
       ('SSG101', 'Working in Group Skills', 1, 1),
       ('PRO201', 'Front-end Web Development', 1, 2),
       ('PRJ311', 'Desktop Java Applications', 1, 3),
       ('PRJ311', 'Introduction to Information Assurance', 1, 3),
       ('PRP201c ', 'Python programming', 1, 3),
       ('SWE102', 'Introduction to Software Engineering', 1, 4),
       ('MAI391', 'Advanced mathematics', 1, 4),
       ('AIG201c', 'Artificial Intelligence', 1, 4);



INSERT INTO quiz (quizname, numOfQuestion, dateCreated, timeLimit, courseId)
VALUES ('PT1', 10, '2023-06-13', '00:30:00', 1),
       ('PT2', 20, '2023-06-15', '00:30:00', 1),
       ('FE', 20, '2023-06-15', '00:30:00', 1),
       ('PT1', 10, '2023-06-13', '00:30:00', 2),
       ('PT2', 20, '2023-06-15', '00:30:00', 2),
       ('FE', 20, '2023-06-15', '00:30:00', 2),
       ('PT1', 10, '2023-06-13', '00:30:00', 3),
       ('PT2', 20, '2023-06-15', '00:30:00', 3),
       ('FE', 20, '2023-06-15', '00:30:00', 3),
       ('PT1', 10, '2023-06-13', '00:30:00', 4),
       ('PT2', 20, '2023-06-15', '00:30:00', 4),
       ('FE', 20, '2023-06-15', '00:30:00', 4);

INSERT INTO QuestionQuiz (QuestionQuizId, quizId, questionId)
VALUES	(1, 1, 1),
		(2, 1, 2),
		(3, 1, 3),
		(4, 1, 4),
		(5, 1, 5),
		(6, 1, 6),
		(7, 1, 7),
		(8, 1, 8),
		(9, 1, 9),
		(10, 1, 10),
		(11, 2, 11),
		(12, 2, 12),
		(13, 2, 13),
		(14, 2, 14),
		(15, 2, 15),
		(16, 2, 16),
		(17, 2, 17),
		(18, 2, 18),
		(19, 2, 19),
		(20, 2, 20),
		(21, 3, 21),
		(22, 3, 22),
		(23, 3, 23),
		(24, 3, 24),
		(25, 3, 25),
		(26, 3, 26),
		(27, 3, 27),
		(28, 3, 28),
		(29, 3, 29),
		(30, 3, 30);

-- Inserting sample questions
INSERT INTO Question ([content], quizId)
VALUES
    ('What is the capital of France?', 1),
    ('Who painted the Mona Lisa?', 1),
    ('What is the symbol for hydrogen?', 1),
    ('What is the largest planet in our solar system?', 1),
    ('What is the tallest mountain in the world?', 1),
    ('Who wrote the play "Hamlet"?', 1),
    ('What is the chemical formula for water?', 1),
    ('Which country is known as the Land of the Rising Sun?', 1),
    ('Who discovered gravity?', 1),
    ('What is the largest ocean on Earth?', 1),
    ('What is the national flower of India?', 2),
    ('Who painted the Sistine Chapel ceiling?', 2),
    ('What is the largest desert in the world?', 2),
    ('Who is the author of "Pride and Prejudice"?', 2),
    ('What is the chemical symbol for gold?', 2),
    ('What is the currency of Japan?', 2),
    ('What is the longest river in the world?', 2),
    ('Who invented the telephone?', 2),
    ('What is the largest continent on Earth?', 2),
    ('Who wrote the novel "To Kill a Mockingbird"?', 2),
    ('What is the speed of light in a vacuum?', 3),
    ('Who is the Greek god of the sea?', 3),
    ('What is the largest country in the world by land area?', 3),
    ('Who is the author of "1984"?', 3),
    ('What is the chemical formula for table salt?', 3),
    ('Which planet is known as the Red Planet?', 3),
    ('Who painted the "Starry Night"?', 3),
    ('What is the currency of the United Kingdom?', 3),
    ('What is the unit of electric current?', 3),
    ('Who is the author of "The Great Gatsby"?', 3);

-- Inserting sample answers
INSERT INTO Answer ([content], isCorrectAnswer, questionId)
VALUES
    ('Paris', 1, 1),
    ('London', 0, 1),
    ('Rome', 0, 1),
    ('Leonardo da Vinci', 1, 2),
    ('Pablo Picasso', 0, 2),
    ('Vincent van Gogh', 0, 2),
    ('H', 1, 3),
    ('He', 0, 3),
    ('O', 0, 3),
    ('Jupiter', 1, 4),
    ('Saturn', 0, 4),
    ('Mars', 0, 4),
    ('Mount Everest', 1, 5),
    ('K2', 0, 5),
    ('Kangchenjunga', 0, 5),
    ('William Shakespeare', 1, 6),
    ('Arthur Miller', 0, 6),
    ('Henrik Ibsen', 0, 6),
    ('H2O', 1, 7),
    ('CO2', 0, 7),
    ('NaCl', 0, 7),
    ('Japan', 1, 8),
    ('China', 0, 8),
    ('South Korea', 0, 8),
    ('Isaac Newton', 1, 9),
    ('Albert Einstein', 0, 9),
    ('Galileo Galilei', 0, 9),
    ('Pacific Ocean', 1, 10),
    ('Atlantic Ocean', 0, 10),
    ('Indian Ocean', 0, 10),
    ('Lotus', 1, 11),
    ('Rose', 0, 11),
    ('Tulip', 0, 11),
    ('Michelangelo', 1, 12),
    ('Raphael', 0, 12),
    ('Donatello', 0, 12),
    ('Sahara', 1, 13),
    ('Gobi', 0, 13),
    ('Atacama', 0, 13),
    ('Jane Austen', 1, 14),
    ('Charlotte Brontë', 0, 14),
    ('Emily Dickinson', 0, 14),
    ('Au', 1, 15),
    ('Ag', 0, 15),
    ('Cu', 0, 15),
    ('Japanese Yen', 1, 16),
    ('Euro', 0, 16),
    ('Pound Sterling', 0, 16),
    ('Nile', 1, 17),
    ('Amazon', 0, 17),
    ('Mississippi', 0, 17),
    ('Alexander Graham Bell', 1, 18),
    ('Thomas Edison', 0, 18),
    ('Nikola Tesla', 0, 18),
    ('Asia', 1, 19),
    ('Africa', 0, 19),
    ('North America', 0, 19),
    ('Harper Lee', 1, 20),
    ('J.D. Salinger', 0, 20),
    ('F. Scott Fitzgerald', 0, 20),
    ('299,792,458 meters per second', 1, 21),
    ('123,456,789 meters per second', 0, 21),
    ('987,654,321 meters per second', 0, 21),
	('Poseidon', 1, 22),
    ('Zeus', 0, 22),
    ('Hades', 0, 22),
    ('Russia', 1, 23),
    ('Canada', 0, 23),
    ('China', 0, 23),
    ('George Orwell', 1, 24),
    ('Aldous Huxley', 0, 24),
    ('Ray Bradbury', 0, 24),
    ('NaCl', 1, 25),
    ('H2O2', 0, 25),
    ('CO2', 0, 25),
    ('Mars', 1, 26),
    ('Venus', 0, 26),
    ('Mercury', 0, 26),
    ('Vincent van Gogh', 1, 27),
    ('Pablo Picasso', 0, 27),
    ('Claude Monet', 0, 27),
    ('British Pound', 1, 28),
    ('US Dollar', 0, 28),
    ('Euro', 0, 28),
    ('Ampere', 1, 29),
    ('Ohm', 0, 29),
    ('Volt', 0, 29),
    ('F. Scott Fitzgerald', 1, 30),
    ('Ernest Hemingway', 0, 30),
    ('J.K. Rowling', 0, 30);

select * from Account

select * from Category
where categoryId = '1'

select * from Course
where courseId = '1'

select * from quiz
where courseId = '1'

select * from QuestionQuiz

select * from Question

select * from Answer

ALTER TABLE QuestionQuiz
DROP CONSTRAINT FK_QuestionQuiz_quizId;

ALTER TABLE QuestionQuiz
DROP CONSTRAINT FK_QuestionQuiz_questionId;

ALTER TABLE Answer
DROP CONSTRAINT FK_Answer_questionId;

ALTER TABLE Question
DROP CONSTRAINT FK_Question_quizId;

ALTER TABLE Course
DROP CONSTRAINT FK_Course_id;

ALTER TABLE Course
DROP CONSTRAINT FK_Course_categoryId;

ALTER TABLE quiz
DROP CONSTRAINT FK_quiz_courseId;

-- Drop tables
DROP TABLE QuestionQuiz;
DROP TABLE Answer;
DROP TABLE Question;
DROP TABLE quiz;
DROP TABLE Course;
DROP TABLE Category;
DROP TABLE Account;