library(dplyr)

list.files()
subway <- read.csv("1-4호선승하차승객수.csv")
View(subway)
# 컬럼명만 뽑는 함수
names(subway)

# 승차인원의 총합
subway %>% group_by(line_no) %>% summarise(total_in. = sum(in.))
# group_by로(값)을 묶음 %>% 파생변수 쓰려면 summarise가 필수(계산식(컬럼명))

# 열 합하고 행 추가하는거

exam03
test1 <- read.csv("test1.csv")
test1

test2 <- read.csv("test2.csv")
test2

# inner_join 겹치는것만
# full-join 싹다 붙이는거
# left_join 왼쪽에 있는것 들만
# right_join 오른쪽에 있는것들만

total <- full_join(test1, test2, by="id")
total

teacher <- read.csv("teacher.csv")
exam <- full_join(exam, teacher, by="class")
exam

test3 <- read.csv("test3.csv")
group_all <- bind_rows(total, test3)
group_all