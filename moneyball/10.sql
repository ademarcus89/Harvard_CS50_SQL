SELECT "first_name", "last_name", "salary", perf."year", "HR"
FROM "performances" AS "perf"
JOIN "players" AS "p" ON p.id = perf.player_id
JOIN "salaries" AS "sal" ON p.id = sal.player_id AND sal.player_id = perf.player_id
WHERE perf."year" = sal."year"
ORDER BY perf."player_id" ASC, perf."year" DESC, "HR" DESC, "salary" DESC;
