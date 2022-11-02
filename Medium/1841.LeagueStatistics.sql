select
    team_name
    , count(*) as matches_played
    , sum(case when home > away then 3 when home = away then 1 else 0 end) as points
    , sum(home) as goal_for
    , sum(away) as goal_against
    , sum(home) - sum(away) as goal_diff
    
from 
    (select home_team_id, home_team_goals as home, away_team_goals as away from matches
     union all
     select away_team_id as home_team_id, away_team_goals as home, home_team_goals as away from matches
	 ) g
join teams t on g.home_team_id = t.team_id
group by 1
order by 3 desc, 6 desc, 1
