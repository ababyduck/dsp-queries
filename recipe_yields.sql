SELECT
	sr.id AS synth_id,
	
	sr.result AS NQ_id,
	i0.name AS NQ_name,
	sr.resultqty AS NQqty,
	
	sr.resulthq1 AS HQ1_id,
	i1.name AS HQ1_name,
	sr.resulthq1qty AS HQ1qty,
	
	sr.resulthq2 AS HQ2_id,
	i2.name AS HQ2_name,
	sr.resulthq2qty AS HQ2qty,
	
	sr.resulthq3 AS HQ3_id,
	i3.name AS HQ3_name,
	sr.resulthq3qty AS HQ3qty
	
FROM synth_recipes sr
JOIN item_basic AS i0 ON sr.result = i0.itemid
JOIN item_basic AS i1 ON sr.resulthq1 = i1.itemid
JOIN item_basic AS i2 ON sr.resulthq2 = i2.itemid
JOIN item_basic AS i3 ON sr.resulthq3 = i3.itemid;