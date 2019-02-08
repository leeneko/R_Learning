v1 <- 10
v1
v2 <- "반가워요"
v2
v3 <- TRUE
v3

sum(1,2,3)
sum(1,NA,3)
sum(1,NULL,3)

Sys.Date()
Sys.time()
date()

as.Date(10, origin="2017-11-10")

v1 <- c(1,2,3,4,5,6,7,8,9,10)
v1
v2 <- c(TRUE,FALSE,TRUE)
v2
v3 <- c("봄","여름","가을","겨울")
v3
v4 <- c(1,TRUE,"여름")
v4
v5 <- c(52,TRUE)
v5
v6 <- c(1,2,3,4,5)
v6[3]
v6[3] <- 8
v6
# v6에서 3보다 큰 숫자 출력
v6[v6 > 3]
# v6에서 3보다 큰 숫자를 2로 변경
v6[v6 > 3] <- 2
v6

x <- seq(1,10)
x

y <- 1:10
y

z <- seq(1,10, by=4)
z

o <- seq(1,10, length.out = 4)
o

x <- seq(1,3)
rep(x, times = 3)
rep(x, each = 3)

x <- seq(1, 20, by = 3)
c(x[1], x[3], x[5])
x[c(1,3,5)]
s <- c(1,3,5)
x[s]
x[-c(1,3,5)]

a <- c(1,2,3)
a <- c(a,4)
a <- append(a, 8, after = 3)
a

var1 <- c(1,2,3)
var2 <- c(3,4,5)
var3 <- c(1,2,3,4)
var1 + var2
var1 + var3

union(var1, var2)
setdiff(var1, var2)
intersect(var1, var2)

var <- c(1,2,3)
3 %in% var

vec1 <- c("사과", "배", "감", "버섯", "고구마")
vec1[-3]
vec1[vec1 != "감"]
setdiff(vec1, "감")

