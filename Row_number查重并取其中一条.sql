���ظ�������ȡ����һ����
	SELECT
	t.MDGSupplierNo,
	t.MDGSupplierName,
	ROW_NUMBER () OVER (
		partition BY t.MDGSupplierNo,
		t.MDGSupplierName
	ORDER BY
		t.MDGSupplierNo
	) AS id
	FROM
	Tb_MGD_Suppiler t;
--group by t.MDGSupplierNo,t.MDGSupplierName ;
	WHERE
	id = 1;
-- ֻȡ��1������
