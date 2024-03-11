-- lower(�ҹ���), initcap(�ձ��ڴ빮��), upper(�빮��)
SELECT * FROM dual;

/*
dual�̶�� ���̺��� sys�� �����ϴ� ����Ŭ�� ǥ�� ���̺�μ�,
���� �� �࿡ �� �÷��� ��� �ִ� dummy ���̺� �Դϴ�.
�Ͻ����� ��� �����̳� ��¥ ���� � �ַ� ����մϴ�.
��� ����ڰ� ������ �� �ֽ��ϴ�.
*/

SELECT
    'abcDEF', lower('abcDEF'),initcap('abcDEF'), upper('abcDEF') 
FROM dual;


SELECT
    last_name, lower(last_name), initcap(last_name), upper(last_name)
FROM employees;

SELECT
    salary
FROM employees
WHERE lower(last_name) = 'austin';


-- length(����), instr(���� ã��, ������ 0 ��ȯ, ������ �ε�����)
SELECT
    'abcdef', LENGTH('abcdef'), INSTR('abcdef', 'b')
FROM dual;

SELECT
    first_name, LENGTH(first_name), INSTR(first_name, 'a')
FROM employees;

-- substr(�ڸ� ���ڿ�, �����ε���, ����)
-- substr(�ڸ� ���ڿ�, �����ε���) -> ������
-- �ε��� 1���� ����
SELECT
    'abcdef' AS ex,
    SUBSTR('abcdef', 2, 5),
    CONCAT('abc', '123')
FROM dual;

SELECT
    first_name,
    SUBSTR(first_name, 1, 3),
    CONCAT(first_name, last_name)
FROM employees;

-- LPAD, RPAD (��, ������ ������ ���ڿ��� ä���)
SELECT
    LPAD('abc', 10, '*'),
    RPAD('abc', 10, '*')
FROM dual;


-- LTRIM(), RTRIM, TRIM()
-- LTRIM(param1, param2) -> param2�� ���� param1���� ã�Ƽ� ����(���ʺ���)
-- RTRIM(param1, param2) -> param2�� ���� param1���� ã�Ƽ� ����(�����ʺ���)
-- TRIM() -> ���� ���� ����

SELECT
    LTRIM('javascript_java', 'java')
FROM dual;

SELECT
    RTRIM('javascript_java', 'java')
FROM dual;


SELECT TRIM('               java                    ') FROM dual;

-- REPLACE(str, old, new)

SELECT
    REPLACE('My dream is a president', 'president', 'programmer')
FROM dual;

SELECT
    REPLACE(REPLACE('My dream is a president', 'president', 'programmer'), ' ', '')
FROM dual;

SELECT
    REPLACE(CONCAT('Hello ', 'World!'), '!', '?')
FROM dual;


/*
���� 1.
EMPLOYEES ���̺��� �̸�, �Ի����� �÷����� ����(��Ī)�ؼ� �̸������� �������� ��� �մϴ�.
���� 1) �̸� �÷��� first_name, last_name�� �ٿ��� ����մϴ�. (CONCAT)
���� 2) �Ի����� �÷��� xx/xx/xx�� ����Ǿ� �ֽ��ϴ�. xxxxxx���·� �����ؼ� ����մϴ�. (REPLACE)
*/
SELECT
    CONCAT(first_name, last_name),
    REPLACE(hire_date, '/', '')
FROM employees
ORDER BY first_name ASC;

/*
���� 2.
EMPLOYEES ���̺��� phone_number�÷��� ###.###.####���·� ����Ǿ� �ִ�
���⼭ ó�� �� �ڸ� ���� ��� ���� ������ȣ (02)�� �ٿ� 
��ȭ ��ȣ�� ����ϵ��� ������ �ۼ��ϼ���. (CONCAT, SUBSTR ���)
*/
SELECT
    SUBSTR(CONCAT('02.', phone_number), 1, 15)
FROM employees;

/*
���� 3. 
EMPLOYEES ���̺��� JOB_ID�� it_prog�� ����� �̸�(first_name)�� �޿�(salary)�� ����ϼ���.
���� 1) ���ϱ� ���� ���� �ҹ��ڷ� ���ؾ� �մϴ�.(��Ʈ : lower �̿�)
���� 2) �̸��� �� 3���ڱ��� ����ϰ� �������� *�� ����մϴ�. 
�� ���� �� ��Ī�� name�Դϴ�.(��Ʈ : rpad�� substr �Ǵ� substr �׸��� length �̿�)
���� 3) �޿��� ��ü 10�ڸ��� ����ϵ� ������ �ڸ��� *�� ����մϴ�. 
�� ���� �� ��Ī�� salary�Դϴ�.(��Ʈ : lpad �̿�)
*/
SELECT
    first_name, salary

FROM employees
WHERE lower(job_id) = 'it_prog';













