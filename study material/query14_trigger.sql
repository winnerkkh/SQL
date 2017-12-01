#트리거
select * from stock where goods_id = 1006;
insert into sotck(goods_id,seq,qty) values(1006,4,200);

select goods_id,
       sum(qty) 
   from stock
 group by goods_id;

# 기존의 테이블과 데이타를 바탕으로 새로운 테이블 만들기alter
# create table 테이블명 as select 칼럼 from 테이블;
create table totStock as
select goods_id id, sum(qty) qty
  from stock
 group by goods_id;
 
 desc totStock;
 alter table totStock add constraint primary key(id);
 
 select * from totStock;
#트리거 생성 
 delimiter //
 create TRIGGER stock_in_trg
 AFTER INSERT ON stock
 for each row # 한 행이 입력된 후
 BEGIN
     update totstock
		set qty = (SELECT sum(qty)
                     from stock 
					where id = NEW.goods_id)
      ;
 END
 //
 delimiter ;
 #트리거 칼럼값 old.qty, new.qty
 delimiter //
 create TRIGGER stock_in_trg
 AFTER INSERT ON stock
 for each row # 한 행이 입력된 후
 BEGIN
     update totstock
		set qty = qty+ new.qty
	 where  id = new.goods_id
      ;
 END
 //
 delimiter ;
 
 drop trigger stock_in_trg;
 
 
 
 
 
 
 
 
 
 