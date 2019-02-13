install.packages("foreign")

library(foreign) # SPSS 파일 로드
library(dplyr) # 전처리
library(ggplot2) # 시각화

korea <- read.spss("Koweps_hpda12_2017_beta1.sav", to.data.frame = T) # 데이터 파일 불러오기
korea_copy <- korea # 복사본 만들기

korea_copy <- korea_copy %>% rename(gender = h12_g3, # 성별
                                    birth = h12_g4, # 태어난 연도
                                    marriage = h12_g10, # 혼인상태
                                    religion = h12_g11, # 종교
                                    income = h12_pers_income1, # 월급
                                    code_job = h12_eco9, # 직종코드
                                    code_region = h12_reg7) # 지역코드

class(korea_copy$gender)
table(korea_copy$gender)

korea_copy$gender <- ifelse(korea_copy$gender == 1, "male", "female")

qplot(korea_copy$income)
qplot(korea_copy$income) + xlim(0, 10000)

summary(korea_copy$income)

korea_copy$income <- ifelse(korea_copy$income == 0, NA, korea_copy$income)

gender_income <- korea_copy %>% filter(!is.na(income)) %>% group_by(gender) %>% summarise(mean_income = mean(income))
gender_income

ggplot(gender_income, aes(x = gender, y = mean_income)) + geom_col()

qplot(korea_copy$birth)
summary(korea_copy$birth)
table(is.na(korea_copy$birth))

age_income <- korea_copy %>% filter(!is.na(income)) %>% group_by(birth) %>% summarise(mean_income = mean(income))
age_income

korea_copy <- korea_copy %>% mutate(age = 2017 - korea_copy$birth + 1)
qplot(korea_copy$age)

age_income <- korea_copy %>% filter(!is.na(income)) %>% group_by(age) %>% summarise(mean_income = mean(income))
age_income

ggplot(data = age_income, aes(x = age, y = mean_income)) + geom_line()
