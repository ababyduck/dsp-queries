SELECT name, CE, VE, AOE 
FROM spell_list
UNION ALL
SELECT name, CE, VE, isAOE 
FROM abilities
ORDER BY name;