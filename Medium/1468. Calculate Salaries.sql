SELECT company_id, employee_id, employee_name
,ROUND(CASE
    WHEN MAX(salary) over(PARTITION BY company_id) < 1000 THEN salary
    WHEN MAX(salary) over(PARTITION BY company_id) BETWEEN 1000 AND 10000 THEN salary-(salary*.24) 
    ELSE salary-(salary*.49)
END,0) salary
FROM salaries
