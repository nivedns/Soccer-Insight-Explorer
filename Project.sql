create table "womens_euro_22"
(
    "50_50"    text,
    ball_recovery_offensive     boolean,
    ball_recovery_recovery_failure          boolean,
    block_deflection   boolean,
    block_offensive boolean,
    block_save_block      boolean,
    carry_end_location      float [],
    clearance_aerial_won      boolean,
    clearance_body_part      text,
    counterpress      boolean,
    dribble_no_touch      boolean,
    dribble_nutmeg      boolean,
    dribble_outcome      text,
    dribble_overrun      boolean,
    duel_outcome      text,
    duel_type      text
    duration      float,
    foul_committed_advantage      boolean,
    foul_committed_offensive      boolean,
    foul_committed_penalty      boolean,
    foul_won_advantage      boolean,
    foul_won_defensive      boolean,
    foul_won_penalty      boolean,
    goalkeeper_body_part      text,
    goalkeeper_end_location      float [],
    goalkeeper_outcome      text,
    goalkeeper_position      text,
    goalkeeper_type      text,
    id text,
    injury_stoppage_in_chain boolean,
    location float [],
    match_id int,
    minute int,
    miscontrol_aerial_won boolean,
    period int,
    play_pattern text,
    player text,
    player_id int,
    position text,
    possession int,
    possession_team text,
    possession_team_id int,
    related_events text [],
    shot_aerial_won boolean,
    shot_body_part text,
    shot_deflected boolean,
    shot_first_time boolean,
    shot_one_on_one boolean,
    shot_open_goal boolean,
    shot_outcome text,
    shot_redirect boolean,
    shot_technique text,
    shot_type text,
    substitution_outcome text,
    substitution_replacement text,
    tactics text,
    team text,
    team_id int,
    timestamp text,
    type text,
    under_pressure boolean

);


--- Example Queries:
--- 1) For winning teams, what is the pass completion percentage compared to losing teams?
--- 2) For each team, which player is involved in the most possessions where a shot is attempted

SELECT team_id, possession, type
FROM womens_euro_22
WHERE type = 'Shot';

SELECT type, count(*)
FROM womens_euro_22
group by type

--- 3) For each team, which player has the most passes played to them?
--- 4) Which players are most successful playing long balls forward and what impact does that have on the goals per game for that team?
--- 5) On the spanish team, where does each player pass to the most frequently?
--- 6) Looking at the dribble vs pass time/distance how do teams fair based on that ratio? Do teams who do a lot of dribbling perform worse?