SELECT "first_name", "last_name" FROM "players"
WHERE "id" IN (
    SELECT sal."player_id" FROM "salaries" AS "sal"
    JOIN "performances" AS "perf" ON perf.player_id = sal.player_id
    WHERE perf."year" = 2001 AND sal."year" = perf."year" AND "H" > 0
    ORDER BY ("salary"/"H")
    LIMIT 10
)
AND "id" IN (
    SELECT sal."player_id" FROM "salaries" AS "sal"
    JOIN "performances" AS "perf" ON perf.player_id = sal.player_id
    WHERE perf."year" = 2001 AND sal."year" = perf."year" AND "RBI" > 0
    ORDER BY ("salary"/"RBI")
    LIMIT 10
);
