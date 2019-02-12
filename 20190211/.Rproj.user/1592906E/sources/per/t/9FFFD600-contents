exam <- read.csv("csv_exam.csv")
exam
View(exam)

is.na(exam)
# 결즉치 몇개 있는지 알 수 있음

table(is.na(exam))
mean(exam$math, na.rm = T)
table(is.na(exam$math))

library(dplyr)
exam %>%  filter(!is.na(science)) %>% summarise(mean(science))
# na가 있는지 없는지 알고 싶을때 is.na
# na가 없는거 뽑고 싶을 때 !is.na
exam %>%  filter(!is.na(science) & !is.na(math) & !is.na(english))

exam %>%  na.omit(exam)
# na가 포함된거 생

# na.rm은 결측치 아닌값들
exam$science <- ifelse(is.na(exam$science), mean(exam$science, na.rm = T), exam$science)
exam

exam$english <- ifelse(is.na(exam$english), mean(exam$english, na.rm = T), exam$english)

exam$math <- ifelse(is.na(exam$math), mean(exam$math, na.rm = T), exam$math)

exam$math[20] <- 300
# 20에 값을 300으로 바꾸겠다.
boxplot(exam$math)