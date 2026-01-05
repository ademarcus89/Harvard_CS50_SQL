SELECT "name", ROUND(AVG("salary"),2) AS "salary"
FROM "teams" AS "t"
JOIN "salaries" AS "s" ON t.id = s.team_id
WHERE s."year" = "2001"
GROUP BY "team_id"
ORDER BY "salary" ASC
LIMIT 5;
