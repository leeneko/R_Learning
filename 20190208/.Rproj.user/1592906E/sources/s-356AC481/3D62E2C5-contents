install.packages("wordcloud")
install.packages("RColorBrewer")
install.packages("KoNLP")
install.packages("wordcloud2")

library(wordcloud)
library(RColorBrewer)
library(KoNLP)
library(wordcloud2)

word <- c("광주광역시", "서울특별시", "부산광역시")
frequency <- c(50, 250, 160)
wordcloud(word, frequency, colors = pal, random.order = F)
# word : 단어 (default)
# freq : 단어들의 빈도 (default)
# scale : 가장 빈도가 큰 단어와 가장 빈도가 작은 단어의 폰트 사이의 크기 차이
# min.freq : 출력될 단어들의 최소빈도
# max.words : 출력될 단어들의 최대 빈도 (lnf : 제한없음)
# random.order : TRUE 면 위치가 맘대로, FALSE 면 큰 글씨들이 가운데쯤에 위치

display.brewer.all()
display.brewer.pal(8, "Dark2")
pal <- brewer.pal(8, "Dark2")

kia = read.csv("기아타이거즈연봉.csv")
name <- kia$선수명
price <- kia$연봉
wordcloud(name, price, random.order = F, random.color = F, colors = pal, scale = c(5,1))

v1 <- "봄이 지나면 여름이고 여름이 지나면 가을입니다. 그리고 겨울이죠"
v2 <- extractNoun(v1)

useNIADic()
# sejongDic : R의 기존 형태소사저
# NIADic : 기존 형태소사전의 부족한 단어 수를 보완하여 한국정보화진흥원(NIA)이 개발

moon <- readLines("대통령북한연설.txt")
moon1 <- extractNoun(moon)
moon1

# wordcloud2 는 테이블 형태로 데이터를 입력해줘야한다
moon2 <- table(unlist(moon1))
moon2
sort(moon2) # 기본값은 오름차순
moon3 <- sort(moon2, decreasing = T)

wordcloud2(moon3, shuffle = F, size = 2.5, color = pal)

france <- readLines("대통령파리연설.txt")
france1 <- extractNoun(france)
france2 <- table(unlist(france1))
france3 <- sort(france2, decreasing = T)

wordcloud2(head(france3, 20), shuffle = F, color = pal) # head를 사용해서 상위 n개 출력

high <- readLines("high.txt")
high1 <- extractNoun(high)
high2 <- table(unlist(high1))
high3 <- sort(high2, decreasing = T)

wordcloud2(high3, shuffle = F, color = pal)

list.files()
mergeUserDic(data.frame(c("짱"), c("ncn")))
movie <- readLines("review.txt")
movie2 <- extractNoun(movie)
movie3 <- unlist(movie2)
movie4 <- movie3[nchar(movie3) < 5]
movie5 <- movie4[nchar(movie4) > 1]
movie6 <- gsub("ㅋ", "", movie5)
movie7 <- gsub("ㅋㅋ", "", movie6)
movie8 <- gsub("ㅎ", "", movie7)
movie9 <- gsub("ㅎㅎ", "", movie8)
movie10 <- gsub("ㅗ", "", movie9)
movie11 <- gsub("ㅅ", "", movie10)
movie12 <- gsub("^", "", movie11)
movie13 <- gsub("^^", "", movie12)

movie14 <- head(sort(table(movie13), decreasing = T), 50)
wordcloud2(movie14, shuffle = F, color = pal, size = 2)
