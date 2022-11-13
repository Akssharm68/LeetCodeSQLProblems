WITH score AS
(
SELECT interview_id, SUM(score) AS score_sum
FROM rounds
GROUP BY interview_id
)

SELECT c.candidate_id AS candidate_id
FROM candidates c
JOIN score s
ON c.interview_id = s.interview_id AND c.years_of_exp >= 2 AND s.score_sum > 15
