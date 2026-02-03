mysql> create database empdetails;
Query OK, 1 row affected (0.03 sec)

mysql> use empdetails;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> create table  employee(emp_no varchar(30),emp_name varchar(25),designation varchar(30),dept_no varchar(20),salary int(20));
Query OK, 0 rows affected, 1 warning (0.05 sec)

mysql> desc empdetails;
ERROR 1146 (42S02): Table 'empdetails.empdetails' doesn't exist
mysql> desc employee;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| emp_no      | varchar(30) | YES  |     | NULL    |       |
| emp_name    | varchar(25) | YES  |     | NULL    |       |
| designation | varchar(30) | YES  |     | NULL    |       |
| dept_no     | varchar(20) | YES  |     | NULL    |       |
| salary      | int         | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> insert into values('emp01','Adith','manager','dp01',450000);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'values('emp01','Adith','manager','dp01',450000)' at line 1
mysql> insert into employee values('emp01','Adith','manager','dp01',45000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee values('emp02','Adarsh','analyst','dp02',30000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values('emp03','Abhinav','clerk','dp03',25000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee values('emp04','Akash','tester','dp04',40000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee values('emp05','veena','driver','dp05',15000);
Query OK, 1 row affected (0.03 sec)

mysql> alter table employee add mobile_no int(10);
Query OK, 0 rows affected, 1 warning (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> desc employee;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| emp_no      | varchar(30) | YES  |     | NULL    |       |
| emp_name    | varchar(25) | YES  |     | NULL    |       |
| designation | varchar(30) | YES  |     | NULL    |       |
| dept_no     | varchar(20) | YES  |     | NULL    |       |
| salary      | int         | YES  |     | NULL    |       |
| mobile_no   | int         | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into employee values('emp05','veena','driver','dp05',15000,'98765432');
Query OK, 1 row affected (0.02 sec)

mysql> select * from employee;
+--------+----------+-------------+---------+--------+-----------+
| emp_no | emp_name | designation | dept_no | salary | mobile_no |
+--------+----------+-------------+---------+--------+-----------+
| emp01  | Adith    | manager     | dp01    |  45000 |      NULL |
| emp02  | Adarsh   | analyst     | dp02    |  30000 |      NULL |
| emp03  | Abhinav  | clerk       | dp03    |  25000 |      NULL |
| emp04  | Akash    | tester      | dp04    |  40000 |      NULL |
| emp05  | veena    | driver      | dp05    |  15000 |      NULL |
| emp05  | veena    | driver      | dp05    |  15000 |  98765432 |
+--------+----------+-------------+---------+--------+-----------+
6 rows in set (0.00 sec)

mysql> update employee set mobile_no='9876542' where emp_no=emp01;
ERROR 1054 (42S22): Unknown column 'emp01' in 'where clause'
mysql> update employee set mobile_no='9876542' where emp_no=01;
ERROR 1292 (22007): Truncated incorrect DOUBLE value: 'emp01'
mysql> update employee set mobile_no='9876542' where dept_no=dp01;
ERROR 1054 (42S22): Unknown column 'dp01' in 'where clause'
mysql> update employee set mobile_no='9876542';
Query OK, 6 rows affected (0.01 sec)
Rows matched: 6  Changed: 6  Warnings: 0

mysql> select * from employee;
+--------+----------+-------------+---------+--------+-----------+
| emp_no | emp_name | designation | dept_no | salary | mobile_no |
+--------+----------+-------------+---------+--------+-----------+
| emp01  | Adith    | manager     | dp01    |  45000 |   9876542 |
| emp02  | Adarsh   | analyst     | dp02    |  30000 |   9876542 |
| emp03  | Abhinav  | clerk       | dp03    |  25000 |   9876542 |
| emp04  | Akash    | tester      | dp04    |  40000 |   9876542 |
| emp05  | veena    | driver      | dp05    |  15000 |   9876542 |
| emp05  | veena    | driver      | dp05    |  15000 |   9876542 |
+--------+----------+-------------+---------+--------+-----------+
6 rows in set (0.00 sec)

mysql> select * from employee;
+--------+----------+-------------+---------+--------+-----------+
| emp_no | emp_name | designation | dept_no | salary | mobile_no |
+--------+----------+-------------+---------+--------+-----------+
| emp01  | Adith    | manager     | dp01    |  45000 |   9876542 |
| emp02  | Adarsh   | analyst     | dp02    |  30000 |   9876542 |
| emp03  | Abhinav  | clerk       | dp03    |  25000 |   9876542 |
| emp04  | Akash    | tester      | dp04    |  40000 |   9876542 |
| emp05  | veena    | driver      | dp05    |  15000 |   9876542 |
| emp05  | veena    | driver      | dp05    |  15000 |   9876542 |
+--------+----------+-------------+---------+--------+-----------+
6 rows in set (0.00 sec)

mysql> insert into employee values('emp05','akash','attender','dp05',15000,'98765432');
Query OK, 1 row affected (0.02 sec)

mysql> select * from employee;
+--------+----------+-------------+---------+--------+-----------+
| emp_no | emp_name | designation | dept_no | salary | mobile_no |
+--------+----------+-------------+---------+--------+-----------+
| emp01  | Adith    | manager     | dp01    |  45000 |   9876542 |
| emp02  | Adarsh   | analyst     | dp02    |  30000 |   9876542 |
| emp03  | Abhinav  | clerk       | dp03    |  25000 |   9876542 |
| emp04  | Akash    | tester      | dp04    |  40000 |   9876542 |
| emp05  | veena    | driver      | dp05    |  15000 |   9876542 |
| emp05  | veena    | driver      | dp05    |  15000 |   9876542 |
| emp05  | akash    | attender    | dp05    |  15000 |  98765432 |
+--------+----------+-------------+---------+--------+-----------+
7 rows in set (0.00 sec)

mysql> delete from employee where emp05;
ERROR 1054 (42S22): Unknown column 'emp05' in 'where clause'
mysql> delete from employee where emp_no=emp01;
ERROR 1054 (42S22): Unknown column 'emp01' in 'where clause'
mysql> 


