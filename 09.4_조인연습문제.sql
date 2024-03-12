
/*
���� 1.
-EMPLOYEES ���̺��, DEPARTMENTS ���̺��� DEPARTMENT_ID�� ����Ǿ� �ֽ��ϴ�.
-EMPLOYEES, DEPARTMENTS ���̺��� ������� �̿��ؼ�
���� INNER , LEFT OUTER, RIGHT OUTER, FULL OUTER ���� �ϼ���. (�޶����� ���� ���� �ּ����� �ۼ�)
*/
SELECT
    *
FROM employees e
JOIN departments d
ON e.department_id = d.department_id; -- INNER JOIN 106��

SELECT
    *
FROM employees e
LEFT OUTER JOIN departments d
ON e.department_id = d.department_id; -- LEFT OUTER JOIN 107��

SELECT
    *
FROM employees e
RIGHT OUTER JOIN departments d
ON e.department_id = d.department_id; -- RIGHT OUTER JOIN 122��

SELECT
    *
FROM employees e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id; -- FULL OUTER JOIN 123��

/*
���� 2.
-EMPLOYEES, DEPARTMENTS ���̺��� INNER JOIN�ϼ���
����)employee_id�� 200�� ����� �̸�, department_name�� ����ϼ���
����)�̸� �÷��� first_name�� last_name�� ���ļ� ����մϴ�
*/
SELECT
    e.first_name || ' ' || e.last_name AS full_name, d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE e.employee_id = 200;

/*
���� 3.
-EMPLOYEES, JOBS���̺��� INNER JOIN�ϼ���
����) ��� ����� �̸��� �������̵�, ���� Ÿ��Ʋ�� ����ϰ�, �̸� �������� �������� ����
HINT) � �÷����� ���� ����Ǿ� �ִ��� Ȯ��
*/
SELECT
    e.first_name || ' ' || e.last_name AS full_name, j.job_title
FROM employees e
JOIN jobs j
ON e.job_id = j.job_id
ORDER BY full_name ASC;

/*
���� 4.
--JOBS���̺�� JOB_HISTORY���̺��� LEFT_OUTER JOIN �ϼ���.
*/
SELECT
    *
FROM jobs j
LEFT OUTER JOIN job_history jh
ON j.job_id = jh.job_id;


/*
���� 5.
--Steven King�� �μ����� ����ϼ���.
*/
SELECT
    e.first_name || ' ' || e.last_name AS full_name, d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE e.first_name = 'Steven' AND e.last_name = 'King';

/*
���� 6.
--EMPLOYEES ���̺�� DEPARTMENTS ���̺��� Cartesian Product(Cross join)ó���ϼ���
*/
SELECT
    *
FROM employees e
CROSS JOIN departments d;



























































































