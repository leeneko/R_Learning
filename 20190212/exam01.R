list.files()
store <- read.csv("주문 후 배달시간.csv")
store
mean(store$A, na.rm = T)
mean(store$B, na.rm = T)
store$A
store$B
mean(store$B[store$B < 600])

# 데이터 관찰하기
# 중간값(위와 같이 이상치가 있는 경우가 아닌 편차가 심할 경우에 통계를 내는 방법 중 하나)
# 극단치, 이상치란? 데이터 분포상 정상범위를 벗어난 
median(store$A, na.rm = T)
median(store$B, na.rm = T)

# 4분위 수
quantile(store$A, na.rm = T)
quantile(store$B, na.rm = T)

# 4분위수 시각화 : boxplot()
# 정규화 > 표준정규분포
vec1 <- c(16,21,22,23,24,25,30)
quantile(vec1)
# result :
# 0%   25%  50%  75%  100% 
# 16.0 21.5 23.0 24.5 30.0 
# IQR * 1.5 = (24.5 - 21.5) * 1.5 = 4.5
boxplot(vec1)

library(dplyr)
store <- store %>% filter(B < 600) # B 식당의 이상치 값을 제거
boxplot(store$A, store$B[store$B<600], na.rm = T, names = c("A식당", "B식당"))

boxplot(store$B, store$C, na.rm = T, names = c("B식당", "C식당"))

par(mfrow = c(1,2)) # 한번에 여러개 도표 확인 (행, 열)
hist(store$B)
hist(store$C)

# 분산과 표준편차
# 분산이란 평균값으로부터 떨어져 있는 정도를 나타내는 지표
var(store$B)
var(store$C)
sd(store$B)
sd(store$C)

blood <- read.csv("호남대혈액형.csv")
table(blood$blood)
library(RColorBrewer)
brewer.pal.info
pal1 <- brewer.pal(4, "Dark2")
pie(table(blood$blood), label = paste0(names(table(blood$blood)), "형"), main = "우리반 혈액형", col = rev(pal1), init.angle = 90)

list.files()
blood2 <- read.csv("혈액형현황.csv")
table(blood2)
blood2Class <- table(blood2$class)
blood2Blood <- table(blood2$blood)
blood2Gender <- table(blood2$gender)

par(mfrow = c(1,3))
pie(table(blood2$class), labels = paste0(names(table(blood2$class)), "반"), main = "반별 학생현황", init.angle = 90)
pie(table(blood2$blood), labels = paste0(names(table(blood2$blood)), "형"), main = "혈액형별 현황", init.angle = 90)
pie(table(blood2$gender), labels = names(table(blood2$gender)), main = "성별 현황", init.angle = 90)

barplot(t(table(blood2 %>% select(blood, gender))), col = c("#8DD3C7", "#FFFFB3"), legend = T, beside = T)
