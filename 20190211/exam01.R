install.packages("dplyr")
library(dplyr)
list.files()
exam <- read.csv("csv_exam.csv")
exam

subset(exam, class == 1)

exam %>% filter(class == 1)
exam %>% filter(math > 50)
exam %>% filter(class == 1) %>% filter(math >= 60)
exam %>% filter(class == 1 & math >= 60)
# or 연산자는 한개만때
# ctrl + shift + m = %>%(단축키) = 디플러 패키지
# filter 행 하나 뽑아낼때

exam %>% filter(class != 1)
library(ggplot2)
View(mpg)


mpg2 <- as.data.frame(mpg)
one <- mpg %>% filter(displ <= 4)
two <- mpg %>% filter(displ >= 5)
one
two
mean(one$hwy)
mean(two$hwy)

# mpg 파일에서 아우디 도요타 자료들을 뽑아서 도시연비 누가 더 높은지 비교
audi <- mpg %>% filter(manufacturer == "audi")
toyota <- mpg %>% filter(manufacturer == "toyota")
audi
toyota
mean(audi$cty)
mean(toyota$cty)

exam
exam %>% filter(class == 1) %>%  select(math, english)
# 클래스가 1인것들 중에서 수학이랑 영어만 보고싶을때
View(exam)

exam %>% select(-math)
# 특정열 제외하고 추출할때는 (-math)하면 math만 뺴고 나옴

# 정렬함수
sort(exam$math)
sort(exam$math, decreasing = T)
# sort 내림차순 방법 decreasing = T

# 오름 차순 arrange
exam %>% arrange(math)
# 내림 차순 desc 붙여주면 됨
exam %>% arrange(desc(math))

# 정렬 두개도 가능
exam %>% arrange(math, english)
# 수학점수가 같으면 그걸 기준으로 영어는 또 정렬해줌

# mutate 파생변수 > (파생변수 명 = (구할 값들))
exam <- exam %>% mutate(mean = (math + english + science)/3)
exam

# 그룹 만들때? group_by
exam %>%  group_by(class) %>% summarise(mean(mean))
수
# 각반별 수학의 최고 점수 max(math)이거 보기 힘들면 max=로 넣어버리기
exam %>% group_by(class) %>% summarise(max = max(math)) %>%  head(3)
