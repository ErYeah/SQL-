1.��ѯĳ������Щ�洢���̣����¼�� SP��ʹ�õ� :

select distinct object_name(id) from syscomments where id in

(select object_id from sys.objects where type ='P') and text like'%TableName%'

 

2.������Щ���̶Ըñ����˸��²�����

select distinct object_name(id) from syscomments where id in

(select object_id from sys.objects where type ='P') and text like'%update tablename%'