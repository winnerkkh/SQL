# delimiter의 역할
# ;로 구분되는 명령문의 구분을
# //로 하나로 묶기위한 처리
# 컴파일이 끝나면 다시 원래의 ;로 환원
select * from goods;
#create procedure 프로시져명() BEGIN ~~~ END //

delimiter //
create procedure GetGoodsList()
Begin
	select * from goods;
END //
delimiter ;

#프로시져 호출
call GetGoodsList();

# create procedure 프로시져명(in 입력변수 타입)
# BEGIN ~ END//


delimiter //
create procedure GetGoodsInfo(in id int(4))
BEGIN
	select * from goods where id = inid;
END //
delimiter ; 

#호출 call 프로시져명(값)
call GetGoodsInfo(1001);

#out 매개변수를 가진 프로시져
delimiter //
create procedure countGoods(out cnt int)
BEGIN
	select count(*) 
	   into cnt
	   from  goods;
END
//
delimiter ; 

#호출 - @ <--- 바인딩 변수 - 프로그램 종료시까지 값을 저장
call countGoods(@total);
select @total;


#
create procedure countPerMaker(in inId int, out cnt int)
BEGIN
	select count(*) 
	  into cnt
	  from goods
      where maker_makercd = inId;
END //
delimiter ;



