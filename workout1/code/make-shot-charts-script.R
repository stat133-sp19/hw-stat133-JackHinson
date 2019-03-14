#' title: 
#' description:
#' inputs:
#' outputs:

install.packages("jpeg")
library("jpeg")
library("grid")
library("ggplot2")

setwd("/Users/Jack/workout1/images")

gsw <- read.csv("/Users/Jack/workout1/data/shots-ddta.csv")

court_file <- "../images/nba-court.jpg"

court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))

thompson_shot_chart <- ggplot(data = thompson) +annotation_custom(court_image, -250, 250, -50, 420) +geom_point(aes(x = x, y = y, color = shot_made_flag)) +ylim(-50, 420) +ggtitle('Klay Thompson') +theme_minimal()
ggsave(file="../images/klay-thompson-shot-chart.pdf",plot=thompson_shot_chart,width=6.5, height=5)

curry_shot_chart <- ggplot(data = curry) +annotation_custom(court_image, -250, 250, -50, 420) +geom_point(aes(x = x, y = y, color = shot_made_flag)) +ylim(-50, 420) +ggtitle('Stephen Curry') +theme_minimal()
ggsave(file="../images/stephen-curry-shot-chart.pdf", plot=curry_shot_chart,width=6.5, height=5)

iguodala_shot_chart <- ggplot(data = iguodala) +annotation_custom(court_image, -250, 250, -50, 420) +geom_point(aes(x = x, y = y, color = shot_made_flag)) +ylim(-50, 420) +ggtitle('Andre Iguodala') +theme_minimal()
ggsave(file="../images/andre-iguodala-shot-chart.pdf", plot=iguodala_shot_chart, width=6.5, height=5)

durant_shot_chart <- ggplot(data = durant) +annotation_custom(court_image, -250, 250, -50, 420) +geom_point(aes(x = x, y = y, color = shot_made_flag)) +ylim(-50, 420) +ggtitle('Kevin Durant') +theme_minimal()
ggsave(file="../images/kevin-durant-shot-chart.pdf", plot=durant_shot_chart, width=6.5, height=5)

green_shot_chart <- ggplot(data = green) +annotation_custom(court_image, -250, 250, -50, 420) +geom_point(aes(x = x, y = y, color = shot_made_flag)) +ylim(-50, 420) +ggtitle('Draymond Green') +theme_minimal()
ggsave(file="../images/draymond-green-shot-chart.pdf", plot=green_shot_chart,width=6.5, height=5)

gsw_shot_chart_facetted<- ggplot(data=gsw) +annotation_custom(court_image, -250, 250, -50, 420) +geom_point(aes(x = x, y = y, color = shot_made_flag)) +ylim(-50, 420) +ggtitle('Shot Charts GSW: 2016') +theme_minimal()+facet_wrap(~player)+theme(legend.position = "top")

ggsave(file="../images/gsw-shot-charts.pdf", plot=gsw_shot_chart_facetted,width=8, height=7)

ggsave(file="../images/gsw-shot-charts.png", plot=gsw_shot_chart_facetted, width=8, height=7)
