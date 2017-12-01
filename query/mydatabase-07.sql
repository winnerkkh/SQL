
        create table member(
        no int primary key auto_increment,
        name varchar(30),
        flag char(1) default 'y'
        )
        
        select * from member;
        alter table member modify flag varchar(1) default 'y';
        
        insert into member(name) values('홍길동');
        insert into member(name) values('일지매');
        insert into member(name) values('이꺽정');
        insert into member(name) values('이순신');         
        insert into member(name) values('유관순');
        
        /*논리적 삭제 물리적 삭제*/
        update member set flag ='n' where no=1;
        
        /*회원 조회시 데이타*/ 
        select * from member where flag != 'n';
        
        /*회원 가입시 데이타*/
        select * from membermember;
        
        
        
       select * from goods;
       
       
       create table address(
       no int primary key auto_increment,
       name varchar(20),
       address varchar(20), 
       tel varchar(15)
       );
       
       
       select * from address;
       
      delete from address where no >1;
        