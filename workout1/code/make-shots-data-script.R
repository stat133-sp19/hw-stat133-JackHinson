#' title: make-shots-data-script.R
#' description: This script is manipulating the existing data to add the name of the player who is shooting the ball, renaming values to be more descriptive whether the player made it or not, and being more clear about what minute in the game the shot was taken.
#' input: To add a column with the players name it is fairly simple to use the mutate function, name the column "player" and type in the name. To be more descriptive whether the shot was made or missed I logically subsetted the dataframe two different times for each player, covering both scenarios as my input using bracket notation. This was added to the '<-' assigning command. Lastly, the inputs for the new variable minute took two variables from our initial dataset, the quarter the shot was taken in (and multiplied by 12 because there are 12 min in a quarter) and minutes_remaining.  
#' output:The output is a brand new column that adds the players name next to every shot the specific player has taken. The output on shot_made_flag replaced the original value in the data and came out as either "shot_no" or "shot_yes". The output for minute was another newly created column that specified the minute in the game that the shot was taken at, counting up (not down as the data originally did).

getwd()
setwd("/Users/Jack/workout1/data")

curry <-read.csv("../data/stephen-curry.csv", stringsAsFactors = F, colClasses = c("factor","character","integer","integer","real","real","character","character","factor","integer","factor","integer","integer"))
green <- read.csv("../data/draymond-green.csv", stringsAsFactors = F, colClasses = c("factor","character","integer","integer","real","real","character","character","factor","integer","factor","integer","integer"))
durant <- read.csv("../data/kevin-durant.csv", stringsAsFactors = F, colClasses = c("factor","character","integer","integer","real","real","character","character","factor","integer","factor","integer","integer"))
iguodala <-read.csv("../data/andre-iguodala.csv", stringsAsFactors = F, colClasses = c("factor","character","integer","integer","real","real","character","character","factor","integer","factor","integer","integer"))
thompson <-read.csv("../data/klay-thompson.csv", stringsAsFactors = F, colClasses = c("factor","character","integer","integer","real","real","character","character","factor","integer","factor","integer","integer"))

library(dplyr)
library(ggplot2)

curry <- mutate(curry, player="Stephen Curry", colClasses=("factor"))
thompson <- mutate(thompson, player='Klay Thompson')
iguodala<- mutate(iguodala, player="Andre Iguodala")
durant<- mutate(durant, player="Kevin Durant")
green<- mutate(green, player="Draymond Green")


curry$shot_made_flag[curry$shot_made_flag=="n"] <- "shot_no"
curry$shot_made_flag[curry$shot_made_flag=="y"] <- "shot_yes"

thompson$shot_made_flag[thompson$shot_made_flag=="n"] <- "shot_no"
thompson$shot_made_flag[thompson$shot_made_flag=="y"] <- "shot_yes"

iguodala$shot_made_flag[iguodala$shot_made_flag=="n"] <- "shot_no"
iguodala$shot_made_flag[iguodala$shot_made_flag=="y"] <- "shot_yes"

durant$shot_made_flag[durant$shot_made_flag=="n"] <- "shot_no"
durant$shot_made_flag[durant$shot_made_flag=="y"] <- "shot_yes"

green$shot_made_flag[green$shot_made_flag=="n"] <- "shot_no"
green$shot_made_flag[green$shot_made_flag=="y"] <- "shot_yes"


curry <- mutate(curry, minute= (12*curry$period)-curry$minutes_remaining)
thompson<- mutate(thompson, minute= (12*thompson$period)-thompson$minutes_remaining)
iguodala<- mutate(iguodala, minute= (12*iguodala$period)-iguodala$minutes_remaining)
durant <- mutate(durant, minute= (12*durant$period)-durant$minutes_remaining)
green <- mutate(green, minute= (12*green$period)-green$minutes_remaining)

summary(curry)
getwd()
setwd("/Users/Jack/workout1/output")
sink(file = '../output/stephen-curry-summary.txt') 
summary(curry) 
sink()

sink(file = '../output/klay-thompson-summary.txt') 
summary(thompson) 
sink()

sink(file = '../output/andre-iguodala-summary.txt') 
summary(iguodala) 
sink()


sink(file = '../output/kevin-durant-summary.txt') 
summary(durant) 
sink()

sink(file = '../output/draymond-green-summary.txt') 
summary(green) 
sink()


gsw<- rbind(curry, thompson, iguodala, durant, green)

setwd("/Users/Jack/workout1/data")
write.csv(gsw,file="../data/shots-ddta.csv")

setwd("/Users/Jack/workout1/output")
sink(file="../output/shots-data-summary.txt")
summary(gsw)
sink()

