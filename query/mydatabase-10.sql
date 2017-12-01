#트리거
#기존의 테이블과 데이타를 바탕으로 새로운 테이블 만들기
#create table 테이블명 as select 칼럼 from 테이블;
select * from stock where goods_id = 1006;
insert into stock(goods_id, seq, qty) values(1006, 4, 200);


select goods_id, 
	   sum(qty) 
   from stock
  group by goods_id;
  
  
create table totStock as
select goods_id, sum(qty) qty
	from stock
    group by goods_id;
    
desc totStock;
alter table totStock add constraint primary key(id);

select * from totstock;
 
 #트리거 생성
 delimiter //
 create trigger stock_in_trg
 after insert on stock #insert, update, delete 중 insert
 for each row # 한 행이 입력된 후
 BEGIN
	update totstock 
	  set qty = qty + new.qty
	 where id = new.goods_id
     ;
 END
 //
 delimiter ;
 
 select * from stock;
 select * from totstock;
 update totstock set qty=100 where id =1001;
 
 insert into stock(goods_id, sq, qty)
			values(1001, 2, now(), 100);
            
insert into stock values();
 