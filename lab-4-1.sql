-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT players.id, players.first_name, players.last_name, sum(stats.hits) as 'career hits', sum(stats.home_runs) as 'career homeruns'
FROM stats INNER JOIN players ON players.id = stats.player_id
WHERE players.first_name = "Barry" AND players.last_name = "Bonds";