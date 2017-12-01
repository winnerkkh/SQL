update totstock
		set qty = qty + (SELECT sum(qty)
						   from stock 
					      where id = '100')
 where id = '1001';
 
select * from stock; 
select * from totstock;
update totstock set qty=100 where id = 1001;

# mysql에서 현재 날짜 시간을 얻어오는 함수 now()

insert into stock(goods_id,seq,stockday,qty)
		   values(1001,2,now(),100);
insert into stock values(1004,2,now(),100);  


create table stock_history(
no int primary key  auto_increment,
goods_id int,
stockdate datetime default current_timestamp,
oldQty int,
newQty int
);

drop trigger trg_stock_d;
delimiter //
create trigger trg_stock_d
after delete on stock
for each row
BEGIN
   insert into stock_history(goods_id,oldQty,newQty)
         values(old.goods_id,old.qty,0);
END
//
delimiter ;
      
select * from stock_history;      
select * from stock;      
 
delete from stock where goods_id = 1006 and seq=3; 





