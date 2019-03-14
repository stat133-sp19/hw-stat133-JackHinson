Data-Dictionary
================
Jack Hinson
3/3/2019

### Team\_name

The variable team\_name is a character data type that lists which National Basketball Asociation (NBA) team that the respective player is on. For this project, all valuess will be **"Golden State Warriors"** as that is the team we are analyzing.

### Game-date

This data point lists what day of the 2016 NBA season that the shot was taken on. Some dates are in 2017 because the NBA season starts in late October and ends in mid-April.

### Season

This lists what season the the shot was taken in. For all players this will be 2016 because we are analyzing shots from this year.

### Period

This indicates which quarter of the game the shot was taken in. There are 4 quarters in a game, and if the score is tied at the end of the game, goes into a 5 minute overtime period until the game is won. Presumably, all OT shots are counted in the 4th quarter.

### Minutes\_Remaining

Minutes\_remaining says how many minutes were left in the quarter when the shot was taken. It can range any where from 1-11 as there are 12 minutes in each quarter, but it is near impossible for it to be shot within a second.

### Seconds\_Remaining

This is the same as above, except it tracks seconds left until the next minute.

### Shot\_Made\_Flag

Shot Made Flag indicates if the attempted shot was made or not. Y means it was made, N means it was missed.

### Action\_Type

There are many moves a shooter can make when on offense. Action\_type describes the type of shot and the move made.The main options are lay-ups and jump shots, each with several variations. Lay-ups are taken very near the basket and shot off of 1 foot and then layed up into the hoop. These can have several permutations, like "cutting finger rolls" when the player runs a cut to the basket and rolls it off their finger into the hoop,or "Driving Reverse Layups" when they start on one end of the basket and finish on the other.

Jump shots are standard shots from outside the key and have many permutations, including but not limited to fadeaways when your body moves away in the opposite direction of the basket, stepbacks are when they take a jerky dribble and step back before shooting etc.

### Shot\_Type

The shot\_type variable indicates whether a shot was a two point field goal or a three point field goal. Two pointers with your feet on or inside the three point line arc. Anything beyond that counts for three points if the basket is made, but is a lot harder to hit because of its distance.

### Shot\_Distance

The Shot\_Distance measure in feet how far away the basket was taken from. Anything with 0 means it was less than a foot.

### Opponent

This measures which of the other 29 teams the Warriors were playing when the shot was taken. The teams in the Western Conference play the teams from the East 2 times a year, and 4 games against each team in their division (the Warriors play in the Pacific). They play 3 games against all other Western Conference teams.

### x & y

These are the court coordinates where the ball was shot from, in regards to inches away from the basket.
