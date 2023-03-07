select
  question_id as survey_log
from
  surveylog
group by
  1
order by
  sum(case when action = 'answer' then 1 else 0 end) / sum(case when action = 'show' then 1 else 0 end) desc,
  1
limit
  1
;
