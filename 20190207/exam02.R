v1 <- c(1,2,3,4)
mat1 <- matrix(v1)
mat1
mat1 <- matrix(v1, nrow = 2)
mat1
mat1 <- matrix(v1, nrow = 2, byrow = TRUE)
mat1
mat1[2,1]
mat1[2,]
mat1[,2]

mat2 <- rbind(mat1, c(5,6))
mat2

#######################################

No <- c(1,2,3,4)
Name <- c("Apple", "Peach", "Banana", "Grape")
Price <- c(500, 200, 100, 50)
Qty <- c(5,2,4,7)

sales <- data.frame(No, Name, Price, Qty)
sales
sales[1]
sum(sales[1])
sales$No

min(sales$Price) # 최소값
max(sales$Price) # 최대값
median(sales$Price) # 중간값
mean(sales$Price) # 평균

sales[c(2,3)]
sales[1,]
sales[,3]

subset(sales, Price >= 100)
subset(sales, Name == "Apple")
subset(sales, Price >= 100, select = Name)
subset(sales, Price >= 100, select = c(Name, Qty))
subset(sales, Price >= 100, -Qty)

ncol(sales)
nrow(sales)
names(sales)
