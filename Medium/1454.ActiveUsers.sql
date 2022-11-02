SELECT DISTINCT a.id
    , (SELECT name FROM accounts WHERE id=a.id) AS name
FROM logins a, logins b
WHERE a.id = b.id AND DATEDIFF(a.login_date, b.login_date) BETWEEN 1 AND 4
GROUP BY a.id, a.login_date
HAVING COUNT(DISTINCT b.login_date) = 4
