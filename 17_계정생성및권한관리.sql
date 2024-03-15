
-- 사용자 계정 확인
SELECT * FROM all_users;

-- 계정 생성 명령
CREATE USER user1 IDENTIFIED BY user1;

GRANT SELECT ON hr.departments TO user1;

INSERT INTO departments
VALUES(300, 'test', 100, 1800);

GRANT CREATE TABLE TO user1;

GRANT RESOURCE, CONNECT, DBA TO user1;

REVOKE RESOURCE, CONNECT, DBA FROM user1;


-- 테이블이 지참되는 장소인 테이블 스페이스를 설정하는 코드
-- 기본적으로 제공되는 users 테이블 스페이스의 사용량을 무제한으로 지정
ALTER USER user1
DEFAULT TABLESPACE users
QUOTA UNLIMITED ON users;

-- 사용자 계정 삭제
-- DROP USER [유저이름] CASCADE;
-- CASCADE 없을 시 -> 테이블 or 시퀀스 등 객체가 존재한다면 계정 삭제 안됨.
DROP USER user1 CASCADE;









































































