SELECT user_id, gender
FROM Genders
ORDER BY ROW_NUMBER() OVER(PARTITION BY gender ORDER BY user_id), 
		CASE WHEN gender='female' THEN 1 WHEN gender='other' THEN 2 WHEN gender='male' THEN 3 END;
