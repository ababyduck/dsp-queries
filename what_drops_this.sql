SELECT ms.mobid AS "Mob ID",
    ms.mobname AS "Mob Name",
    dml.itemRate AS "Drop Rate"
FROM mob_spawn_points ms
JOIN mob_groups mg ON mg.groupid = ms.groupid
JOIN mob_droplist dml ON dml.dropId = mg.dropid
JOIN item_basic ib ON ib.itemid = dml.itemId
WHERE ib.name LIKE "mermaid%body"
