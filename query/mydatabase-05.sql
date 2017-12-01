# 데이타 조회 시 행수 제한
select * from stock;
# 조회된 데이타 중에서 순서대로 상위 5개만 출력
# selelct * from stock limit 5 -시작은 1부터 5까지
# select 열명 from 테이블명 limit 행수 [offset 시작행 - 시작은 시작행+1 부터]
select * from stock limit 5;
select * from stock limit 3 offset 3;
select * from stock limit 4 offset 0;# 시작은(+1)부터

# 순서대로 7번째 까지 출력
select goods.id '상품코드',
       goods.name '상품명',
       maker.name'제조사명',
       goods.price '가격',
       qty '재고'
  from goods,
       maker,
	   stockmakergoodsmaker_makercd
 where goods.id = stock.goods_id
   and goods.maker_makercd = maker.makercd
 ;
 
 select * from stock;


insert into goods(id, name, price, category, maker_makercd)
			values(1007,'휴대용방석', 5000,2,7001);

insert into goods(id, name, price, category, maker_makercd)
			values(1008,'바람막이', 30000,2,7001);

select * from board;

update board
set readcount = 10,
favor = 5
where no =20;
delete from board where no = 20;

select no title, readcount, favor from board where no = 27