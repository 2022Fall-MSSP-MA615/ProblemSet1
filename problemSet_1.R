#Enter your name as a string under myName
myName <- "TianjianXie"


#Q1
v1 <- c(1:20)
v1
v2 <- c(20:1)
v2
v3 <- c(seq(1,19,by=2))
v3
v4 <- rep(c(3,7,11),times = 10)
v4
v5 <- c(rep(c(3,7,11),times = 10),3)
v5


#Q2
x <- seq(3,6,by=0.1)
x1 <- exp(x) * sin(x)
x1


#Q3
i1 <- c(10:100)
sum1 <- sum((i1)^3 + 4 * (i1)^2)
sum1


#Q4
str1 <- paste("label",1:30, sep = " ")
str1
str2 <- paste("function",1:30, sep = "")
str2 


#Q5
sv <- c(1,'function',NA,seq(1,5,2),0.125)
vs <- paste(sv, collapse = ",")
vs 


#Q6
A <- matrix(c(1:9),nrow = 3,ncol = 3)
m1_ans <- A %*% A %*% A
m1_ans


#Q7
B <- matrix(c(rep(c(12,-12,12),each = 17)),nrow = 17)
m2_ans <- t(B) %*% B
m2_ans


#Q8
A <- matrix(0,nrow = 5, ncol = 5)
A <- abs(col(A)-row(A))+1
y <- c(7,-1,-3,5,17)
m3_ans <- solve(A,y)
m3_ans


#Q9a
xv <- c(seq(0,1,by=0.1))
func1 <- function(xv)
{
  len <- length(xv)
  xv^(1:len)
}
func1_ans <- func1(xv)
func1_ans


#Q9b
func2 <- function(xv)
{
  len <- length(xv)
  xv^(1:len)/(1:len)
}
func2_ans <- func2(xv)
func2_ans


#Q9c
func3 <- function(x,n)
{
  1 + sum((x^(1:n))/(1:n))
}
func3_ans <- func3(xv, length(xv))
func3_ans

#Q10
cel_to_far <- function(temp)
{
  temp * 1.8 + 32
}

far_to_cel <- function(temp)
{
  (temp - 32) / 1.8
}


#Q11
odd_in <- function(x)
{
  x[x %% 2 == 1]
}
odd_ans <- odd_in(1:2000)
odd_ans

#Q12
sum_one <- function(r)
{
  s <- c(1:r)
  sum((sqrt(s)/(11 + 3.5 * r^1.2)))
}
sum_one(10)
sum_ans <- sapply(10, sum_one)
sum_ans


#Q13
modNumber <- function(x,y)
{
  newx <- x
  while(newx %% y != 0)
  {newx <- newx + 1
  }
  newx
}


#Q14
numberOfWheels <- function(x)
{
  switch(
    x,
    "unicycle" = 1,
    "bike" = 2,
    "car" = 4,
    "truck" = 4,
    "tricycle" = 3,
    "motorcycle" = 2
  )
}


#Q15
myFactorial <- function(x)
{
  factorial(x)
}


#Q16
myCustomFactorial <- function(x,y)
{
  if(abs(x-y) != 0)
  {
    CustomFac <- (factorial(max(x,y)))/(factorial(min(x,y)))
  }
  else
  {
    CustomFac <- 0
  }
  CustomFac
}


#Q17
data("rivers")
customRiverMean <- function(x)
{
  myR <- rivers
  NumOfR <- 0
  LenOfR <- 0
  for(i in 1:length(myR))
  {
    if(myR[i] <= x)
    {
      NumOfR <- NumOfR + 1
      LenOfR <- LenOfR + myR[i]
    }
    MeanOfR <- LenOfR / NumOfR
  }
  MeanOfR
}


#Q18
data("ToothGrowth")
longTeeth <- c()
  for(i in ToothGrowth$len)
  {
    if(i >= 15)
    {
      longTeeth <- c(longTeeth,i)
    }
  }
longTeeth


#Q19
data("mtcars")
MeanOfCol <- apply(mtcars,2,mean)
averageHorsePower <- MeanOfCol[["hp"]]
averageHorsePower
averageWeight <- MeanOfCol[["wt"]]
averageWeight


#Q20
zlist <- function(x)
{
  numz <- 0
  for(i in 1:length(x))
  {
    if(x[1] > x[i])
    {
      numz <- numz + 1
    }
  }
  numz
}
inputxy <- function(x,y)
{
  all <- c()
  nth <- 1
  for(i in x)
  {
    ylist <- c(i,y)
    print(ylist)
    all[nth] <- c(ylist)
    nth <- nth + 1
  }
  all
  z <- sapply(all, zlist)
  z
}
