#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
echo "$YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS"
WINNER_NAME=$($PSQL "SELECT name FROM teams WHERE name = '$WINNER'")
if [[ -z $WINNER_NAME && $WINNER != 'winner' ]]
then 
  INSERT_WINNER_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
else
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
fi
OPPONENT_NAME=$($PSQL "SELECT name FROM teams WHERE name = '$OPPONENT'")  
if [[ -z $OPPONENT_NAME && $OPPONENT != 'opponent' ]]
then 
  INSERT_OPPONENT_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
else
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")  
fi
if [[ $WINNER != 'winner' ]]
then
INSERT_GAME=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS,$OPPONENT_GOALS)")
fi
done
