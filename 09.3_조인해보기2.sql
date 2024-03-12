
SELECT * FROM info;
SELECT * FROM auth;




-- inner(����) ����
SELECT *
FROM info i
INNER JOIN auth a
ON i.auth_id = a.auth_id;


-- ����Ŭ ���� (����Ŭ ���� ����)
SELECT *
FROM info i, auth a
WHERE i.auth_id = a.auth_id;


-- auth_id �÷��� �׳� ���� ��ȣ�ϴ� ��� ���
-- �� �ʿ� ��� �����ϴ� �÷��̱⿡, �÷��� ���̺� �̸��� ���̰ų� ��Ī�� �� Ȯ���ϰ� �����Ѵ�
SELECT
    a.auth_id, title, content, name
FROM info i
JOIN auth a -- INNER ���� ��
ON i.auth_id = a.auth_id;


-- �ʿ��� �����͸� ��ȸ�Ѵٸ�(�Ϲ�����)
-- WHERE ������ ���� ������ �ɾ��ָ� �ȴ�.
SELECT
    a.auth_id, i.title, i.content, a.name
FROM info i
JOIN auth a
ON i.auth_id = a.auth_id
WHERE a.name = '�̼���';


-- �ƿ��� (�ܺ�) ����
SELECT *
FROM info i LEFT OUTER JOIN auth a
ON i.auth_id = a.auth_id;

SELECT *
FROM info i RIGHT OUTER JOIN auth a
ON i.auth_id = a.auth_id;

SELECT *
FROM info i, auth a
WHERE i.auth_id = a.auth_id(+);

-- ���� ���̺�� ���� ���̺� �����͸� ��� �о� ǥ���ϴ� �ܺ� ����
SELECT *
FROM info i FULL JOIN auth a
ON i.auth_id = a.auth_id;

-- CROSS JOIN�� JOIN ������ �������� �ʱ� ������
-- �ܼ��� ��� �÷��� ���� JOIN�� �����Ѵ�
-- �����δ� ���� ��� ����
SELECT * FROM info
CROSS JOIN auth;

SELECT * FROM info, auth;


-- ���� �� ���̺� ���� -> Ű ���� ã�� ������ �����ؼ� ���� �ȴ�
SELECT *
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id
LEFT JOIN locations loc ON d.location_id = loc.location_id;

/*
- ���̺� ��Ī a, i�� �̿��Ͽ� LEFT OUTER JOIN ���.
- info, auth ���̺� ���
- job �÷��� scientist�� ����� id, title, content, job�� ���.
*/

SELECT i.id, i.title, i.content, a.job
FROM info i LEFT OUTER JOIN auth a
ON i.auth_id = a.auth_id
WHERE a.job = 'scientist';

-- ���� �����̶� ���� ���̺� ������ ������ ���Ѵ�
-- ���� ���̺� �÷��� ���� ������ �����ϴ� ���� ��Ī���� ������ �� ����Ѵ�

SELECT
    e1.employee_id, e1.first_name, e1.manager_id,
    e2.first_name, e2.employee_id
FROM employees e1
JOIN employees e2
ON e1.manager_id = e2.employee_id
ORDER BY e1.employee_id;






















