INSERT INTO WORKER ( ID , NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'John Doe', '1990-10-10','Trainee', 1000);
INSERT INTO WORKER ( ID , NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Rick Doe', '1990-11-10','Junior', 2000);
INSERT INTO WORKER ( ID , NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Nick Doe', '1990-12-10','Middle', 3000);
INSERT INTO WORKER ( ID , NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Niels Doe', '1990-10-13','Senior', 20000);
INSERT INTO WORKER ( ID , NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Albert Doe', '1990-10-14','Junior', 2000);
INSERT INTO WORKER ( ID , NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Saul Doe', '1990-10-15','Middle', 3000);
INSERT INTO WORKER ( ID , NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Werner Doe', '1990-10-16','Trainee', 1000);
INSERT INTO WORKER ( ID , NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Erwin Doe', '1990-10-17','Middle', 3000);
INSERT INTO WORKER ( ID , NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Maxwell Doe', '1990-10-18','Junior', 1500);
INSERT INTO WORKER ( ID , NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Ludwig Doe', '1990-10-19','Senior', 20000);
CREATE TABLE IF NOT EXISTS worker (
id INT DEFAULT nextval('sequence_for_worker') PRIMARY KEY,
name VARCHAR(1000) NOT NULL CHECK (LENGTH(name) >= 2),
birthday DATE CHECK (birthday > '1900-01-01'),
level VARCHAR NOT NULL CHECK (level IN ('Trainee', 'Junior', 'Middle', 'Senior')),
salary INT CHECK (salary >= 100 AND salary <= 100000)
);

CREATE SEQUENCE IF NOT EXISTS sequence_for_worker START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE IF NOT EXISTS sequence_for_client START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE IF NOT EXISTS sequence_for_project START WITH 1 INCREMENT BY 1;

CREATE TABLE IF NOT EXISTS client (
id INT DEFAULT nextval('sequence_for_client') PRIMARY KEY,
name VARCHAR(1000) NOT NULL CHECK (LENGTH(name) >= 2)
);

CREATE TABLE IF NOT EXISTS project (
id INT DEFAULT nextval('sequence_for_project') PRIMARY KEY,
client_id INT,
FOREIGN KEY(client_id) REFERENCES client(id),
start_date DATE,
finish_date DATE
);

CREATE TABLE IF NOT EXISTS project_worker (
project_id INT,
FOREIGN KEY (project_id) REFERENCES project(id),
worker_id INT,
FOREIGN KEY (worker_id) REFERENCES worker(id),
PRIMARY KEY (project_id, worker_id)
);