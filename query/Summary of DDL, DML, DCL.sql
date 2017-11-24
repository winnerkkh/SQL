#데이타베이스의 sql 명령문 세가지
# DDL - 데이타베이스 정의어
#	  - create, alter, drop
# DML - 데이타베이스 처리어
#	  - insert, select, update, delete
# DCL - 데이타베이스 제어어
#      - grant, revoke
# 테이블 생성
# 테이블명: sample41
# 속성:
# Field, type, null, key, default, extra <-메타 데이타
desc emp;

create table sample41(
	no int, #정수형 타입(기본 11자리)
    a varchar(30), #문자형 타입
    b date #날짜형 타입
);

desc sample41;

#1, 'ABC', '2014-10-25'
insert into sample41(no, a, b) values(1,'ABC', '2014-10-25');

#조회 select
select no, a, b from sample41;

insert into sample41(a,no) values('XYZ',2);
select no, a, b from sample41;

insert into sample41(no,a,b) values(null,null,null);
select no, a, b from sample41;

# SQL도 연산이 가능
# NULL값과 다른 값이 연산결과는 NULL
## ALTER TABLE sample41 no modify int not null;

drop table sample41;

# 테이블을 not null 제약조건(constraint)를 부여
create table sample41(
	no int not null, #정수형 타입(기본 11자리), option null값 입력방지 제약
    a varchar(30), #문자형 타입
    b date #날짜형 타입
);

select * from sample41;
desc sample41;
drop table sample41;

create table sample411(
	no int not null, #정수형 타입(기본 11자리), option null값 입력방지 제약
    a varchar(30), #문자형 타입
    b int default 0 #기본값을 0으로 처리
);

# default옵션 - 테이블 칼럼에 데이타 입력시
# 			  - 값이null로 들어오면 default값
desc sample411;
insert into sample411(no,a)
			    values(1,1);
select no,a,b from sample411;

#옵션 - 자동증가 auto_increment(헤당 칼럼이 primary key가 되어야지 사용 가능함)
create table sample422( #옵션 - 자동증가
		no int primary key auto_increment,
		a varchar(10),
        b date
);

desc sample422;

insert into sample422(a,b)
			 values('ABC', '2017-11-24');
insert into sample422(a,b)
			 values('def', '2017-11-24');
             
             
 select * from sample422;            
 
 #데이타 삭제
 #delete from 테이블명 where 조건;
 delete from sample422; # 데이타 전체를 삭제
 delete from sample422 where no = 2;
 delete from sample422 where a = 'ABC';
 
 #update 테이블명 update대상칼럼 set = '바꿀값'
 #where 조건
 update sample422 set a = 'ABC' where no = 4;

              
 
#테이블 생성
# dept
# deptno, dname, location
# int(4), varchar(30), varchar(20)
# key - 자동증가,
# 1001부터 시작



create table dept(
	deptno int(4) primary key auto_increment,
    dname varchar(30),
    location varchar(20)
);

desc dept;
#auto_increment옵션 - 데이타 입력시 기존의 값에 더하여 자동 증가

insert into dept(deptno, dname, location) values(1001, '기획', '서울');
insert into dept(dname, location) values('영업', '인천'); #1002
insert into dept(dname, location) values('재무', '수원'); #1003
insert into dept(dname, location) values('연구', '평창'); #1004
select * from dept;

# board
# no, ttitle, content, writer, regdate
# int, varchar(30), varchar(500), varchar(50), datetime
# key-자동 증가						- default - 현재시간

create table board(
		no int primary key auto_increment, #primary key는 not null, unique 
        title varchar(30),
        content varchar(500),
        writer varchar(50),
        regdate datetime default current_timestamp #현재시간이 기본 옵션
); #명령어 구분

desc board;

insert into board(title, content, writer)
			values('게시물1', '게시글 등록입니다.','user01');
insert into board(title, content, writer)
			values('게시물2', '게시글2 등록입니다.','user02');
insert into board(title, content, writer)
			values('게시물3', '게시글3 등록입니다.','user03');
insert into board(title, content, writer)
			values('게시물4', '게시글4 등록입니다.','user04');
insert into board(title, content, writer)
			values('게시물5', '게시글5 등록입니다.','user05');
insert into board(title, content, writer)
			values('게시물6', '게시글6 등록입니다.','user01');  
select * from board;
  
#replay
#no, epno, content, writer, regdate
#int, int, varchar(50), varchar(20), datetime
#key - 자동중가

create table reply(
	no int primary key auto_increment,
    epno int,
    content varchar(50),
    writer varchar(20),
    regdate datetime default current_timestamp #현재시간 저장
); 


desc reply;

insert into reply (epno, content, writer) values(1, '1번글에 대한 댓글하나', 'user03');
insert into reply (epno, content, writer)values(1, '1번글에 대한 댓글하나', 'user02');
insert into reply (epno, content, writer) values(2, '2번글에 대한 댓글하나', 'user05');
insert into reply (epno, content, writer) values(2, '1번글에 대한 댓글하나', 'user04');
insert into reply (epno, content, writer) values(3, '3번글에 대한 댓글하나', 'user03');

select * from reply;

#favor
#no, boardno, count
#int, int, int
#key        default 0;

create table favor(
	no int primary key auto_increment,
    boardno int,
    count int default 0
);

desc favor;
insert into favor(boardno) values(1);
insert into favor(boardno) values(2);
insert into favor(boardno) values(3);
insert into favor(boardno) values(4);
insert into favor(boardno) values(5);

select * from favor;

# column의 값을 1증가 시키는 명령문
update favor
	set count = count+1
		where boardno=2;
                
select * from favor;

desc board;

#테이블 수정 alter
alter table board add readcount int;
alter table board modify readcount int default 0;
select * from board;

#readcount 1~3까지 3, readcount4-6 5로 수정
update board
	set readcount = 3
		where no>=1 and no <=3; #조건절에 칼럼값을 제한하여 처리

update board 
	set readcount = readcount+1 #null + 1 = => null
		where no>=4 and no<=6;

update board 
	set readcount = 5
		where no>=4 and no<=6;
        
select * from board;