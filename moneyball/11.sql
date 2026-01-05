SELECT "first_name", "last_name", ("salary" / "H") AS "dollars per hit"
FROM "players"
JOIN "performances" AS "perf" ON perf.player_id = players.id
JOIN "salaries" AS "sal" ON sal.player_id = players.id
WHERE perf."year" = "2001"
AND sal."year" = "2001"
AND "dollars per hit" IS NOT NULL
ORDER BY "dollars per hit" ASC, "first_name" ASC, "last_name" ASC
LIMIT 10;


