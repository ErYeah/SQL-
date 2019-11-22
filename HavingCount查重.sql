--第1步找出重复的数据，灵活运用having的写法：
select commid,ParkID,count(*) from Tb_HSPR_ParkingHand where commid='185301' AND IsDelete = 0 group by commid,ParkID having count(*) > 1;
--第2步找出parkid对应的cust信息
select * from Tb_HSPR_ParkingHand where parkid = '18530100000765' AND IsDelete = 0 ;
--第3步找出具体的用户信息：
select * from Tb_HSPR_Customer where custid = '18530100001084';


--通过两字查询最终得出结果,好好看看这种写法。
select * from Tb_HSPR_Customer where custid in (
select custid from Tb_HSPR_ParkingHand 
where parkid in (
select ParkID from Tb_HSPR_ParkingHand 
where IsDelete = 0 
and commid in ('185301','185302','185303','185304','185305','186170')
group by commid,ParkID having count(*) > 1 )
);