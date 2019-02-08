list.files()
setwd("C:/20190207")
kia <- read.csv("기아타이거즈연봉.csv")
kia
head(kia, 6)
tail(kia, 6)
str(kia)
summary(kia) # 요약 통계
View(kia)