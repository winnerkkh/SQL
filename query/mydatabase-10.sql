#트리거

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
