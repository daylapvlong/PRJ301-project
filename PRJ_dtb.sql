-- Create the Student table
CREATE TABLE Student (
  StudentID INT PRIMARY KEY,
  Name VARCHAR(50),
  Email VARCHAR(100),
  Password VARCHAR(100)
);

-- Create the Teacher table
CREATE TABLE Teacher (
  TeacherID INT PRIMARY KEY,
  Name VARCHAR(50),
  Email VARCHAR(100),
  Password VARCHAR(100)
);

-- Create the Course table
CREATE TABLE Course (
  CourseID INT PRIMARY KEY,
  Name VARCHAR(100),
  Description VARCHAR(255),
  TeacherID INT,
  FOREIGN KEY (TeacherID) REFERENCES Teacher(TeacherID)
);

-- Create the Test table
CREATE TABLE Test (
  TestID INT PRIMARY KEY,
  Name VARCHAR(100),
  Description VARCHAR(255),
  CourseID INT,
  FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Create the Question table
CREATE TABLE Question (
  QuestionID INT PRIMARY KEY,
  Text VARCHAR(255),
  TestID INT,
  FOREIGN KEY (TestID) REFERENCES Test(TestID)
);

-- Create the Answer table
CREATE TABLE Answer (
  AnswerID INT PRIMARY KEY,
  Text VARCHAR(255),
  QuestionID INT,
  IsCorrectAnswer Bit,
  FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);

-- Create the Result table
CREATE TABLE Result (
  ResultID INT PRIMARY KEY,
  StudentID INT,
  TestID INT,
  Score FLOAT,
  FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
  FOREIGN KEY (TestID) REFERENCES Test(TestID)
);

CREATE TABLE TestSession (
	TestSessionID INT PRIMARY KEY,
	Code VARCHAR(10),
	TestID INT,
	FOREIGN KEY (TestID) REFERENCES Test(TestID),
	StartData DATETIME,
	EndDate DATETIME,
	IsInProgree Bit
);
