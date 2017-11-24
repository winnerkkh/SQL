
use myworld;


#테이블 생성
CREATE TABLE emp (
    id int not null primary key,
    username VARCHAR(20),
    deptoo int(1),
    hire DATE,
    sal int
);

insert into emp values(201701, '홍길동', 1,'2012-01-10', 15000);
insert into emp values(201702, '임꺽정', 2,'2012-01-11', 20000);
insert into emp values(201703, '일지매', 3,'2012-01-12', 15000);
insert into emp values(201704, '이순신', 4,'2012-01-13', 30000);
insert into emp values(201705, '유관순', 5,'2012-01-14', 10000);
insert into emp values(201706, '김길동', 6,'2012-01-15', 20000);
insert into emp values(201707, '이지매', 7,'2012-01-16', 30000);

#데이타 조회시 모든 칼럼을 보고싶을때 *
select * from emp;