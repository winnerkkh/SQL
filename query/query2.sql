##데이타 정의의(DDL) - Data Definition Language
#Create, alter, drop

#데이타 처리어(DML) - Data Manipulation Language
# insert, update, delete, select


desc member;

#테이블에 데이타 입력하기
insert into
member(id, username, dept, birth, email, tel)
values(201301, '홍길동', '기술', '1992-10-23', 'hong@naver.com', 010-111-1234);

#데이타 조회하기
select id, username, dept, birth, email, tel from member;

#데이타 수정
update member
	set tel = '010-1234-5678' #수정할 값
	 where id = 201301; #조건

#데이타 삭제
delete from member where id = 201301;
