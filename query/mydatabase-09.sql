select * from goods;

# 함수 create function 함수명(파라미터)
# return 타입
# BEGIN ~~ return 값; END

##################
delimiter //
create function getName(goodsNo int)
returns varchar(10)
BEGIN
	return(
	select name 
     from goods 
    where id = goodsNo
    );
END
//
delimiter ;

select getName(1001);


########################
delimiter //
create function getPrice(goodsNo int)# 파라미터
returns int
BEGIN
	return(select price 
           from goods 
		   where id = goodsNo);
END
//
delimiter ;

###########
select getPrice(1001);


#
select * from stock;
# 상품코드 입력받아서 상품명과 재고수량을 출력하는 함수
# getStockInfo(int goodsNo)
select * from goods;
select sum(qty) from stock where goods_id = 1001;



select concat(concat(getName(1001),' '),10)
  from stock
  where goods_id = 1001;
  
  
delimiter //
create function getStockInfo(goodsNo int)
returns varchar(30)
BEGIN
	return(select concat(concat(getname(goodsNo), '재고:'), sum(qty))
			from stock
			  where goods_id = goodsNo);
END
//
delimiter ;

#####################
select getStockInfo(1001);

#####################

 select goods.name name,
         stock.qty
   from goods,
        (select goods_id id,
                sum(qty) qty
           from stock
		  where goods_id ='1001'
          group by goods_id) stock
 where goods.id=stock.id
 
           
delimiter //
 create function getStockQty(goodsNo int)
 returns varchar(30)
 BEGIN
    return(select sum(qty)
             from stock 
			where goods_id =goodsNo);
 END
 //
 delimiter ;
 
 select concat(getName(1001), getStockQty(1001));
 
 select concat(getName(id),getStockQty(id)) 
   from goods;
 
 
