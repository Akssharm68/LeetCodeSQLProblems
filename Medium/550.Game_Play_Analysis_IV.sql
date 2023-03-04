SELECT
ROUND(COUNT(a2.event_date)/COUNT(*),2) as fraction
FROM
Activity a1 LEFT JOIN Activity a2
ON a1.player_id=a2.player_id and a1.event_date+1=a2.event_date
WHERE (a1.player_id,a1.event_date) IN ( SELECT player_id, MIN(event_date) FROM Activity GROUP BY player_id);
