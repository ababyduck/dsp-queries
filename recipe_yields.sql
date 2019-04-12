SELECT
	sr.id AS synth_id,
	sr.result AS nq_id,
	i0.name AS nq_name,
	sr.resulthq1 AS hq1_id,
	i1.name AS hq1_name,
	sr.resulthq2 AS hq2_id,
	i2.name AS hq2_name,
	sr.resulthq3 AS hq3_id,
	i3.name AS hq3_name
FROM synth_recipes sr
JOIN item_basic AS i0 ON sr.result = i0.itemid
JOIN item_basic AS i1 ON sr.resulthq1 = i1.itemid
JOIN item_basic AS i2 ON sr.resulthq2 = i2.itemid
JOIN item_basic AS i3 ON sr.resulthq3 = i3.itemid;