mysql> CREATE DATABASE StudentDB;
Query OK, 1 row affected (0.07 sec)

mysql> USE StudentDB;
Database changed

mysql> CREATE TABLE Student (ID INT PRIMARY KEY, Firstname VARCHAR(50), Lastname VARCHAR(50), Gender VARCHAR(10), Age INT, Address VARCHAR(255), PhoneNo VARCHAR(15));
Query OK, 0 rows affected (0.16 sec)

mysql> INSERT INTO Student (ID, Firstname, Lastname, Gender, Age, Address, PhoneNo) VALUES (1, 'Amit', 'Sharma', 'Male', 22, 'Delhi', '9876543210'), (2, 'Priya', 'Mehta', 'Female', 21, 'Mumbai', '9876543211'), (3, 'Rahul', 'Verma', 'Male', 23, 'Pune', '9876543212'), (4, 'Sneha', 'Patil', 'Female', 20, 'Bangalore', '9876543213'), (5, 'Vikas', 'Deshmukh', 'Male', 24, 'Hyderabad', '9876543214');
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Student ORDER BY Lastname ASC;
+----+-----------+----------+--------+------+-----------+------------+
| ID | Firstname | Lastname | Gender | Age  | Address   | PhoneNo    |
+----+-----------+----------+--------+------+-----------+------------+
|  5 | Vikas     | Deshmukh | Male   |   24 | Hyderabad | 9876543214 |
|  2 | Priya     | Mehta    | Female |   21 | Mumbai    | 9876543211 |
|  4 | Sneha     | Patil    | Female |   20 | Bangalore | 9876543213 |
|  1 | Amit      | Sharma   | Male   |   22 | Delhi     | 9876543210 |
|  3 | Rahul     | Verma    | Male   |   23 | Pune      | 9876543212 |
+----+-----------+----------+--------+------+-----------+------------+
5 rows in set (0.02 sec)

mysql> SELECT Gender, COUNT(*) AS TotalStudents FROM Student GROUP BY Gender;
+--------+---------------+
| Gender | TotalStudents |
+--------+---------------+
| Male   |             3 |
| Female |             2 |
+--------+---------------+
2 rows in set (0.03 sec)