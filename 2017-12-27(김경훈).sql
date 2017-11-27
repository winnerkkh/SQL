#11-27과제
# 1. 게시글 10개 입력(inset)
# 2. 댓글 1게시글당 1~3개씩 입력.(insert)

# 3. 게시글의 좋아요 칼럼에 10~15씩 카운트 입력 (update)
# 4. 게시글의 readcount 3~10씩 카운트 입력 (update)

# 5. 출력: 게시글 번호, 제목, 내용, 작성자, 댓글내용, 읽은 횟수 , 좋아요 횟수
#		   등록일시, 댓글 작성자, 댓글 내용, 댓글 등록 일시,
# 게시글 테이블

create table board(
	no int primary key auto_increment,
    title varchar(50),
    content longtext,
    writer varchar(30),
    readcount int default 0,
    regdate datetime default current_timestamp,
    favor int default 0
);


desc board;

create table reply(
no int primary key auto_increment,
repno int, #댓글번호
content text,
writer varchar(30),
regdate datetime default current_timestamp
);

#게시판
insert into board(title, content, writer) values('기적의', '한강수다', '홍길동');
insert into board(title, content, writer) values('show2', '치트키', '홍이동');
insert into board(title, content, writer) values('showme3', '치트키 입니다', '홍삼동');
insert into board(title, content, writer) values('blacksheep', '맵전체치트키', '홍사동');
insert into board(title, content, writer) values('자바', '언어입니다', '홍오동');
insert into board(title, content, writer) values('에스큐엘', 'DB언어 입니까?', '홍육동');
insert into board(title, content, writer) values('프로그래밍', '어렵습니다', '홍칠동');
insert into board(title, content, writer) values('상상플러스', 'TV프로그램입니다', '홍팔동');
insert into board(title, content, writer) values('더하기 플러스', 'TV한글버젼', '홍구동');
insert into board(title, content, writer) values('더킹오브파이터', '게임이름', '홍십동');

#게시판 1번 댓글
insert into reply(repno, content, writer) values(1,'안녕','일지매');
insert into reply(repno, content, writer) values(1,'HI','이지매');
insert into reply(repno, content, writer) values(1,'Hello','삼지매');

#게시판 2번 댓글
insert into reply(repno, content, writer) values(2,'whatup','사지매');
insert into reply(repno, content, writer) values(2,'하하','오지매');
insert into reply(repno, content, writer) values(2,'호호','육지매');

#게시판 3번 댓글
insert into reply(repno, content, writer) values(3,'케케','칠지매');
insert into reply(repno, content, writer) values(3,'비비','팔지매');
insert into reply(repno, content, writer) values(3,'다다','구지매');

#게시판 4번 댓글
insert into reply(repno, content, writer) values(4,'랄라','십지매');
insert into reply(repno, content, writer) values(4,'black sheep wall','일꺽정');
insert into reply(repno, content, writer) values(4,'랄라','이꺽정');

#게시판 5번 댓글
insert into reply(repno, content, writer) values(5,'랄라','이꺽정');
insert into reply(repno, content, writer) values(5,'black sheep wall','삼꺽정');
insert into reply(repno, content, writer) values(5,'랄라','사꺽정');

#게시판 6번 댓글
insert into reply(repno, content, writer) values(6,'랄라','오꺽정');
insert into reply(repno, content, writer) values(6,'black sheep wall','육꺽정');
insert into reply(repno, content, writer) values(6,'랄라','칠꺽정');

#게시판 7번 댓글
insert into reply(repno, content, writer) values(7,'랄라','팔꺽정');
insert into reply(repno, content, writer) values(7,'black sheep wall','구꺽정');
insert into reply(repno, content, writer) values(7,'랄라','십꺽정');
    
#게시판 8번 댓글
insert into reply(repno, content, writer) values(8,'랄라','십지매');
insert into reply(repno, content, writer) values(8,'black sheep wall','일꺽정');
insert into reply(repno, content, writer) values(8,'랄라','이꺽정');    
    
#게시판 9번 댓글
insert into reply(repno, content, writer) values(9,'랄라','일순이');
insert into reply(repno, content, writer) values(9,'black sheep wall','이순이');
insert into reply(repno, content, writer) values(9,'랄라','삼순이');    
    
#게시판 10번 댓글
insert into reply(repno, content, writer) values(10,'랄라','사순이');
insert into reply(repno, content, writer) values(10,'black sheep wall','오순이');
insert into reply(repno, content, writer) values(10,'랄라','육순이');    

#게시판 업데이트(좋아요 횟수 - 10~15씩 카운트 입력)
update board set favor = 13 where no =1;
update board set favor = 10 where no =2;
update board set favor = 11 where no =3;
update board set favor = 13 where no =4;
update board set favor = 14 where no =5;
update board set favor = 10 where no =6;
update board set favor = 10 where no =7;
update board set favor = 11 where no =8;
update board set favor = 13 where no =9;
update board set favor = 13 where no =10;

#게시판 업데이트 (읽은 횟수 readcount 3~10씩 카운트 입력)  
update board set readcount = 3 where no =1;
update board set readcount = 6 where no =2;
update board set readcount = 10 where no =3;
update board set readcount = 1 where no =4;
update board set readcount = 1 where no =5;
update board set readcount = 8 where no =6;
update board set readcount = 7 where no =7;
update board set readcount = 9 where no =8;
update board set readcount = 10 where no =9;
update board set readcount = 2 where no =10;

# 출력: 게시글 번호, 제목, 내용, 작성자, 댓글내용, 읽은 횟수 , 좋아요 횟수
#		등록일시, 댓글 작성자, 댓글 내용, 댓글 등록 일시,

select board.no as '게시글 번호', board.title as '제목', board.content as '내용', board.writer as'게시글', reply.content as'댓글내용', board.readcount as '조회수', 
	   board.favor as'좋아요 회수', board.regdate as '게시글 날짜', reply.writer as '댓글 작성자', reply.content as '댓글 내용', reply.regdate as'댓글 등록일자'
	from board,
		 reply
   where board.no = reply.repno;

select * from board;
select * from reply;

drop table board;
drop table reply;