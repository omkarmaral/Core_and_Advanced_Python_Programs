mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.05 sec)

mysql> use StudentManagementSystem;
Database changed

mysql> create table Student (StudentID INT AUTO_INCREMENT PRIMARY KEY,FirstName VARCHAR(50), LastName VARCHAR(50),DateOfBirth DATE,Gender VARCHAR(10),Email VARCHAR(100),Phone VARCHAR(15));
Query OK, 0 rows affected (0.06 sec)

mysql>  create table Course (CourseID INT AUTO_INCREMENT PRIMARY KEY,CourseTitle VARCHAR(100),Credits INT);
Query OK, 0 rows affected (0.03 sec)

mysql>  create table Instructor (InstructorID INT AUTO_INCREMENT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),Email VARCHAR(100));
Query OK, 0 rows affected (0.03 sec)

mysql> create table Enrollment (EnrollmentID INT AUTO_INCREMENT PRIMARY KEY, EnrollmentDate DATE,StudentID INT,CourseID INT,InstructorID INT,FOREIGN KEY (StudentID) REFERENCES Student(StudentID),FOREIGN KEY (CourseID) REFERENCES Course(CourseID),FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID));
Query OK, 0 rows affected (0.05 sec)

mysql> create table Score ( ScoreID INT AUTO_INCREMENT PRIMARY KEY,CourseID INT,StudentID INT,DateOfExam DATE,CreditObtained INT,FOREIGN KEY (CourseID) REFERENCES Course(CourseID),FOREIGN KEY (StudentID) REFERENCES Student(StudentID));
Query OK, 0 rows affected (0.05 sec)

mysql> create table Feedback (FeedbackID INT AUTO_INCREMENT PRIMARY KEY,StudentID INT,Date DATE, InstructorName VARCHAR(100),Feedback TEXT,FOREIGN KEY (StudentID) REFERENCES Student(StudentID));
Query OK, 0 rows affected (0.03 sec)

mysql> insert into Student (FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES ('John', 'Doe', '2000-05-12', 'Male', 'john.doe@example.com', '1234567890'), ('Jane', 'Smith', '2001-07-18', 'Female', 'jane.smith@example.com', '0987654321'),('Alex', 'Brown', '1999-12-30', 'Male', 'alex.brown@example.com', '1122334455'),('Sophia', 'Wilson', '2002-03-25', 'Female', 'sophia.wilson@example.com', '2233445566'),('Mike', 'Taylor', '2000-09-15', 'Male', 'mike.taylor@example.com', '3344556677');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> insert into Course (CourseTitle, Credits) VALUES ('Mathematics', 4),('Physics', 3),('Chemistry', 4),('Biology', 3),('Computer Science', 5);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> insert into Instructor (FirstName, LastName, Email) VALUES ('David', 'Johnson', 'david.johnson@example.com'),('Emma', 'Clark', 'emma.clark@example.com'),('Oliver', 'Martinez', 'oliver.martinez@example.com'),('Liam', 'Anderson', 'liam.anderson@example.com'),('Ava', 'Thomas', 'ava.thomas@example.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> insert into Enrollment (EnrollmentDate, StudentID, CourseID, InstructorID) VALUES('2025-03-01', 1, 1, 1),('2025-03-02', 2, 2, 2),('2025-03-03', 3, 3, 3),('2025-03-04', 4, 4, 4),('2025-03-05', 5, 5, 5);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> insert into Score (CourseID, StudentID, DateOfExam, CreditObtained) VALUES (1, 1, '2025-04-01', 90),(2, 2, '2025-04-02', 85),(3, 3, '2025-04-03', 88),(4, 4, '2025-04-04', 92),(5, 5, '2025-04-05', 95);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> insert into Feedback (StudentID, Date, InstructorName, Feedback) VALUES (1, '2025-04-10', 'David Johnson', 'Excellent teaching and support.'),(2, '2025-04-11', 'Emma Clark', 'Very informative and well-structured lectures.'),(3, '2025-04-12', 'Oliver Martinez', 'Great guidance and feedback.'),(4, '2025-04-13', 'Liam Anderson', 'Interactive and engaging classes.'),(5, '2025-04-14', 'Ava Thomas', 'Helpful and easy-to-understand lessons.');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Student;
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                     | Phone      |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
|         1 | John      | Doe      | 2000-05-12  | Male   | john.doe@example.com      | 1234567890 |
|         2 | Jane      | Smith    | 2001-07-18  | Female | jane.smith@example.com    | 0987654321 |
|         3 | Alex      | Brown    | 1999-12-30  | Male   | alex.brown@example.com    | 1122334455 |
|         4 | Sophia    | Wilson   | 2002-03-25  | Female | sophia.wilson@example.com | 2233445566 |
|         5 | Mike      | Taylor   | 2000-09-15  | Male   | mike.taylor@example.com   | 3344556677 |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Course;
+----------+------------------+---------+
| CourseID | CourseTitle      | Credits |
+----------+------------------+---------+
|        1 | Mathematics      |       4 |
|        2 | Physics          |       3 |
|        3 | Chemistry        |       4 |
|        4 | Biology          |       3 |
|        5 | Computer Science |       5 |
+----------+------------------+---------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Instructor;
+--------------+-----------+----------+-----------------------------+
| InstructorID | FirstName | LastName | Email                       |
+--------------+-----------+----------+-----------------------------+
|            1 | David     | Johnson  | david.johnson@example.com   |
|            2 | Emma      | Clark    | emma.clark@example.com      |
|            3 | Oliver    | Martinez | oliver.martinez@example.com |
|            4 | Liam      | Anderson | liam.anderson@example.com   |
|            5 | Ava       | Thomas   | ava.thomas@example.com      |
+--------------+-----------+----------+-----------------------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
|            1 | 2025-03-01     |         1 |        1 |            1 |
|            2 | 2025-03-02     |         2 |        2 |            2 |
|            3 | 2025-03-03     |         3 |        3 |            3 |
|            4 | 2025-03-04     |         4 |        4 |            4 |
|            5 | 2025-03-05     |         5 |        5 |            5 |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Score;
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
|       1 |        1 |         1 | 2025-04-01 |             90 |
|       2 |        2 |         2 | 2025-04-02 |             85 |
|       3 |        3 |         3 | 2025-04-03 |             88 |
|       4 |        4 |         4 | 2025-04-04 |             92 |
|       5 |        5 |         5 | 2025-04-05 |             95 |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Feedback;
+------------+-----------+------------+-----------------+------------------------------------------------+
| FeedbackID | StudentID | Date       | InstructorName  | Feedback                                       |
+------------+-----------+------------+-----------------+------------------------------------------------+
|          1 |         1 | 2025-04-10 | David Johnson   | Excellent teaching and support.                |
|          2 |         2 | 2025-04-11 | Emma Clark      | Very informative and well-structured lectures. |
|          3 |         3 | 2025-04-12 | Oliver Martinez | Great guidance and feedback.                   |
|          4 |         4 | 2025-04-13 | Liam Anderson   | Interactive and engaging classes.              |
|          5 |         5 | 2025-04-14 | Ava Thomas      | Helpful and easy-to-understand lessons.        |
+------------+-----------+------------+-----------------+------------------------------------------------+
5 rows in set (0.00 sec)