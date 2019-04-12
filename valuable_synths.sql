SELECT
	sr.id AS synth_id,
	
	i0.BaseSell * sr.resultqty AS NQ_value,
	i0.name AS NQ_name,
	CONCAT ('x', sr.resultqty) AS NQ_qty,
	
	i1.BaseSell * sr.resulthq1qty AS HQ1_value,
	i1.name AS HQ1_name,
	CONCAT ('x', sr.resulthq1qty) AS HQ1_qty,
	
	i2.BaseSell * sr.resulthq2qty AS HQ2_value,
	i2.name AS HQ2_name,
	CONCAT ('x', sr.resulthq2qty) AS HQ2_qty,
	
	i3.BaseSell * sr.resulthq3qty AS HQ3_value,
	i3.name AS HQ3_name,
	CONCAT ('x', sr.resulthq3qty) AS HQ3_qty
	
FROM synth_recipes sr
JOIN item_basic AS i0 ON sr.result = i0.itemid
JOIN item_basic AS i1 ON sr.resulthq1 = i1.itemid
JOIN item_basic AS i2 ON sr.resulthq2 = i2.itemid
JOIN item_basic AS i3 ON sr.resulthq3 = i3.itemid

WHERE 
	-- Limit results to synths where HQ affects quantity
	sr.ResultHQ1Qty > sr.ResultQty
	-- Limit results to synths we're potentially already tier 3 on, with fewer than 4 ingredients
	-- (Modify this to match your own skill levels or remove/comment out to audit all recipes)
	/*
	AND sr.Ingredient4 = 0
	AND (
		sr.Cloth BETWEEN 1 AND (93-51)
		OR sr.Cook BETWEEN 1 AND (93+1-51)
		OR sr.Bone BETWEEN 1 AND (60-51)
	)
	*/

ORDER BY i0.BaseSell * sr.ResultQty DESC;