mysql> CREATE TABLE departments (
    -> department_id INT PRIMARY KEY,
    -> department_name VARCHAR(50));
Query OK, 0 rows affected (0.12 sec)

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> employee_name VARCHAR(50),
    -> department_id INT,
    -> FOREIGN KEY (department_id) REFERENCES departments(department_id));
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO departments (department_id, department_name) VALUES
    -> (1, 'HR'),
    -> (2, 'IT'),
    -> (3, 'Finance'),
    -> (4, 'Marketing');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> INSERT INTO employees (employee_id, employee_name, department_id) VALUES
    -> (101, 'Vivek', 1),(102, 'Omkar', 2),(103, 'Sairaj', 3),(104, 'Datta', 2),(105, 'Anish', NULL);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT employees.employee_name, departments.department_name
    -> FROM employees
    -> INNER JOIN departments ON employees.department_id = departments.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Vivek         | HR              |
| Omkar         | IT              |
| Datta         | IT              |
| Sairaj        | Finance         |
+---------------+-----------------+
4 rows in set (0.02 sec)
mysql> SELECT employees.employee_name, departments.department_name
    -> FROM employees
    -> LEFT JOIN departments ON employees.department_id = departments.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Vivek         | HR              |
| Omkar         | IT              |
| Sairaj        | Finance         |
| Datta         | IT              |
| Anish         | NULL            |
+---------------+-----------------+
5 rows in set (0.01 sec)
