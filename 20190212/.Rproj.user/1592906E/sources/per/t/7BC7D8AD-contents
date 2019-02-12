list.files()
korean <- read.csv("학생별국어성적_new.csv")
library(dplyr)
library(ggplot2)

ggplot(korean, aes(x = 이름, y = 점수)) + geom_point()
# 배기량, 고속도로 연비
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()
# ggplot(data = mpg, aes(x = displ, y = hwy)) : 데이터, 축
# + geom_point() : 그래프 종류
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point() + xlim(3,6) + ylim(15, 30)
#  + xlim(3,6) + ylim(15, 30) : 각 축에 리미트

ggplot(data = mpg, aes(x = cty, y = hwy)) + geom_point()
ggplot(data = midwest, aes(x = poptotal, y = popasian)) + geom_point() + xlim(0, 500000) + ylim(0, 10000)
