SELECT (ms.mobid >> 12) & 4095 AS "Zone ID",
	ms.mobid AS "Mob ID", 
	ms.mobname AS "Mob Name",
	ib.NAME AS "Item",
	dml.itemRate / 10 AS "Drop Rate (%)"
FROM mob_spawn_points ms
JOIN mob_groups mg ON mg.groupid = ms.groupid
JOIN mob_droplist dml ON dml.dropId = mg.dropid
JOIN item_basic ib ON ib.itemid = dml.itemId
WHERE ib.sortname LIKE "mermaid%body"