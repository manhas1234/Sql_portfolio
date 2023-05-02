/* 1. How many matches has been played in t20 world cup 2007 */
select count(*) as total_matches from t20_world_cup_2007

/* 2. where was the venue where matches has been played */
select venue from t20_world_cup_2007 group by venue

/* 3. Who has  won player of match award in the final */
 select (`player of the match`) from t20_world_cup_2007 
 where (`group/semi final/final`) = "final"
 
 /* 4. Which team matches  has no result */
 select (`match between`) from t20_world_cup_2007 
 where (`winner team`)='na'
 
 /* 5. On which location  final match has been  played */
 select venue from t20_world_cup_2007 
 where (`Group/Semi Final/Final`)= 'final'
 
 