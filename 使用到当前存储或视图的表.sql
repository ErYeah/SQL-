1.查询某个表被哪些存储过程（以下简称 SP）使用到 :

select distinct object_name(id) from syscomments where id in

(select object_id from sys.objects where type ='P') and text like'%TableName%'

 

2.查找那些过程对该表做了更新操作：

select distinct object_name(id) from syscomments where id in

(select object_id from sys.objects where type ='P') and text like'%update tablename%'