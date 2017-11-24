use myworld;
#database  리스트 조회
show databases;
#database 환경설정
show variables;

create user user02@localhost identified by 'user02';
create user user02@'%' identified by 'user03';
#권한 부여
##데이타 정의의(DDL) - Data Definition Language
#Create, alter, drop

grant select , insert , update on 테이블 to user;
#권한 회수
revoke select,insert,update on 테이블 from user;

#테이블 생성
CREATE TABLE member (
    id int not null primary key,
    username VARCHAR(20),
    dept VARCHAR(7),
    birth DATE,
    email VARCHAR(40)
);

#테이블 구조
desc member;

#테이블 구조 변경 - 데이타의 저장 구조을 변경
alter table member add(tel varchar(30) not null);
alter table member modify username varchar(10);
alter table member drop primary key;

#데이타 정의의 (DDL)
#데이블 삭제 - 테이타가 저장될 구조를 삭제
drop table member;






