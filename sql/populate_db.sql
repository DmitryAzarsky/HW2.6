INSERT INTO WORKER ( NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'John Doe', '1990-10-10','Trainee', 1000);
INSERT INTO WORKER ( NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Rick Doe', '1990-11-10','Junior', 2000);
INSERT INTO WORKER ( NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Nick Doe', '1990-12-10','Middle', 3000);
INSERT INTO WORKER ( NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Niels Doe', '1990-10-13','Senior', 20000);
INSERT INTO WORKER ( NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Albert Doe', '1990-10-14','Junior', 2000);
INSERT INTO WORKER ( NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Saul Doe', '1990-10-15','Middle', 3000);
INSERT INTO WORKER ( NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Werner Doe', '1990-10-16','Trainee', 1000);
INSERT INTO WORKER ( NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Erwin Doe', '1990-10-17','Middle', 3000);
INSERT INTO WORKER ( NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Maxwell Doe', '1990-10-18','Junior', 1500);
INSERT INTO WORKER ( NAME , BIRTHDAY , LEVEL , SALARY ) VALUES ( 'Ludwig Doe', '1990-10-19','Senior', 20000);

INSERT INTO CLIENT ( NAME ) VALUES ('Oleg');
INSERT INTO CLIENT ( NAME ) VALUES ('Dmytro');
INSERT INTO CLIENT ( NAME ) VALUES ('John');
INSERT INTO CLIENT ( NAME ) VALUES ('Joffrey');
INSERT INTO CLIENT ( NAME ) VALUES ('Max');

INSERT INTO project ( CLIENT_ID , START_DATE , FINISH_DATE ) VALUES (  1, '2020-01-01', '2020-04-01');
INSERT INTO project ( CLIENT_ID , START_DATE , FINISH_DATE ) VALUES (  1, '2020-01-01', '2020-04-01');
INSERT INTO project ( CLIENT_ID , START_DATE , FINISH_DATE ) VALUES (  2, '2021-02-01', '2023-04-01');
INSERT INTO project ( CLIENT_ID , START_DATE , FINISH_DATE ) VALUES (  2, '2020-01-01', '2020-09-01');
INSERT INTO project ( CLIENT_ID , START_DATE , FINISH_DATE ) VALUES (  3, '2020-02-01', '2021-05-01');
INSERT INTO project ( CLIENT_ID , START_DATE , FINISH_DATE ) VALUES (  3, '2016-07-01', '2019-02-01');
INSERT INTO project ( CLIENT_ID , START_DATE , FINISH_DATE ) VALUES (  4, '2018-01-01', '2021-03-01');
INSERT INTO project ( CLIENT_ID , START_DATE , FINISH_DATE ) VALUES (  4, '2019-01-01', '2020-04-01');
INSERT INTO project ( CLIENT_ID , START_DATE , FINISH_DATE ) VALUES (  5, '2015-12-01', '2021-08-01');
INSERT INTO project ( CLIENT_ID , START_DATE , FINISH_DATE ) VALUES (  5, '2019-10-01', '2022-07-01');

INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 1, 1);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 1, 2);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 1, 3);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 2, 4);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 2, 5);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 3, 1);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 4, 2);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 4, 3);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 5, 4);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 6, 5);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 7, 1);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 8, 2);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 9, 4);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 9, 5);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 9, 1);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 9, 2);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 9, 3);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 10, 4);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 10, 5);
INSERT INTO project_worker ( PROJECT_ID , WORKER_ID ) VALUES ( 10, 1);