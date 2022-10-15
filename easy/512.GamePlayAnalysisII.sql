select distinct
player_id
, first_value(device_id) Over(partition by player_id order by event_date asc) device_id
From Activity
