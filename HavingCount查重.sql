--��1���ҳ��ظ������ݣ��������having��д����
select commid,ParkID,count(*) from Tb_HSPR_ParkingHand where commid='185301' AND IsDelete = 0 group by commid,ParkID having count(*) > 1;
--��2���ҳ�parkid��Ӧ��cust��Ϣ
select * from Tb_HSPR_ParkingHand where parkid = '18530100000765' AND IsDelete = 0 ;
--��3���ҳ�������û���Ϣ��
select * from Tb_HSPR_Customer where custid = '18530100001084';


--ͨ�����ֲ�ѯ���յó����,�úÿ�������д����
select * from Tb_HSPR_Customer where custid in (
select custid from Tb_HSPR_ParkingHand 
where parkid in (
select ParkID from Tb_HSPR_ParkingHand 
where IsDelete = 0 
and commid in ('185301','185302','185303','185304','185305','186170')
group by commid,ParkID having count(*) > 1 )
);