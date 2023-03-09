# IST256  
# W#1 and W#2

# to quit the programme
quit()
q()

# ?help 
# starting http help server ... done

# Data Types :vectors, factors, matrices, lists, arrays, data frames

# create a numeric vector using the c() function 
c(1, 2, 3)  # press ctrl+Enter

#or
1:3

# R is case-sensitive
c(1,2,3)  # will not be working if you type C(1,2,3), Capital C() by mistake!

# To create a vector of integers using c() you must specify explicitly by placing an L directly after each number.

c(10L, 20L, 30L)       # numeric vector(integer)
c(1, 2, 5.3, 6, -2, 4)  # numeric vector (often called double)
c("one","two","three")  # character vector
c(TRUE,TRUE,TRUE,FALSE,TRUE)  #logical vector

# To check whether a vector is made up of integer or double values:
typeof(c(10L, 20L, 30L))

# Converting Between Integer and Double Values
# converts integers to double-precision values
as.double()     
as.double(c(10L, 20L, 30L))  

# identical to as.double()
as.numeric()    

# converts doubles to integers
as.integer()  

# Given a vector, you can determine its type with typeof(), or check if it’s a specific type with an “is” function: 
# is.character(), is.double(), is.integer(), is.logical(), or, more generally, is.atomic().


# Assignment (Atama): There are three ways to assign an object in R:
#  1. <-   
#  2. =   
#  3. assign()

# Examples
x1 <- c(2.1, 5, -4, 1, 5)
x2 = c(2.1, 5, -4, 1, 5)
assign("x3", c(2.1, 5, -4, 1, 5))

y <- c(x1, 10, 1/4)

rm(x1)  # a built-in function (onceden tanımlanmış fonk.), that removes object x from the memory.

x <- 80
x
# [1] 80.  # Here [1] indicates the first (and the only one) result of you command.


# c()and combining vectors
y <- c(10,20,30,40,50)
y
# [1] 10 20 30 40 50
y <- c(10,20,30,40,50, c(4,6))
y
# [1] 10 20 30 40 50  4  6
y <- c(10,20,30,40,c(4,6),50)
y

# How to access Elements of a vector?
# [1] 10 20 30 40  4  6 50
y[4]
# [1] 40

# What is the problem with that R code below? 
y <- C(10,20,30,40,c(4,6),50)
# Error in C(10, 20, 30, 40, c(4, 6), 50) : 
#   nesne faktör olarak yorumlanamıyor
# Answer: R is case-sensitive. Hence use lowercase c() instead of C(). Uppercase C() function is not defined. R has no idea about what C() is but c().

y <- c(10,20,30,40,50)

y
# [1] 10 20 30 40 50
y <- c(10,20,30,40,50)*0.5
y
#[1]  5 10 15 20 25
y <- c(10,20,30,40,50)**0.5
y
#[1] 3.162278 4.4 72136 5.477226 6.324555 7.071068
y <- c(10,20,30,40,50)
y <- c(10,20,30,40,50)*c(0.5,0.5,0.5,0.5,0.5)
y
# [1]  5 10 15 20 25
y <- c(10,20,30,40,50)*c(0.1,0.2,0.3,0.4,0.5)
y
# [1]  1  4  9 16 25
y <- c(10*0.1,20*0.2,30*0.3,40*0.4,50*0.5)
y
# [1]  1  4  9 16 25
y <- c(10,20,30,40,50)
y <- c(10*0.1,20*0.2,30*0.3,40*0.4,50*0.5)
y
# [1]  1  4  9 16 25
y <- c(10,20,30,40,50)
y
# [1] 10 20 30 40 50
w <- c(50,40,30,20,10)
w
# [1] 50 40 30 20 10

# Examples 
1:10

c(1,3,8)
# [1] 1 3 8
-(1:10)

5:0

-(1:10)

-(1):10

# create vectors using seq() : sequence-sıra/dizi
seq(0,10,2)
# [1]  0  2  4  6  8 10
seq(1,9,2)
#[1] 1 3 5 7 9
seq(1,10,2)
# [1] 1 3 5 7 9
seq(11.5,-3,by = -3.7)
#  [1] 11.5  7.8  4.1  0.4
11.5-3.7
# [1] 7.8
7.8-3.7
# [1] 4.1
4.1-3.7
# [1] 0.4
seq(11.5,-3,by = 3.7)
# Error in seq.default(11.5, -3, by = 3.7) : wrong sign in 'by' argument
#  0.00 0.25 0.50 0.75 1.00

seq(0,1,length = 5)
#[1] 0.00 0.25 0.50 0.75 1.00
seq(0,1,length = 10)
# [1] 0.0000000 0.1111111 0.2222222 0.3333333 0.4444444
# [6] 0.5555556 0.6666667 0.7777778 0.8888889 1.0000000
seq(0,1,5)
# [1] 0
x = 9
seq(1,x,x/3)
# [1] 1 4 7

# create vectors using rep()
rep(1,5)
# [1] 1 1 1 1 1
rep(6,5)
# [1] 6 6 6 6 6
rep(1:2,5)
# [1] 1 2 1 2 1 2 1 2 1 2
rep(c(1,2),5)
# [1] 1 2 1 2 1 2 1 2 1 2

rep(1:3,each = 5)
# [1] 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3
rep(1:3,each = c(5,4))
# [1] 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3
# Warning message:
#  In rep(1:3, each = c(5, 4)) : first element used of 'each' argument
rep(1:3, c(5, 4, 2))

rep(1:3,each = 5)
# [1] 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3

# 3 3 3 3 3 1 3 5 7 9 11 13 15 17 19
a = rep(3,5)
a
# [1] 3 3 3 3 3
b = seq(1,20,by = 2)
b
#[1]  1  3  5  7  9 11 13 15 17 19
c(a,b)
# [1]  3  3  3  3  3  1  3  5  7  9 11 13 15 17 19
c(rep(3,5),seq(1,20,by = 2))
# [1]  3  3  3  3  3  1  3  5  7  9 11 13 15 17 19

# Calculations

# Missing Values
# NA (not available), NaN (is not number), Inf (Infinity)

1/0
# [1] Inf
0/0
# [1] NaN
NaN+100
# [1] NaN
-1/Inf
# [1] 0
-Inf+100
# [1] -Inf
Inf-Inf
# [1] NaN
Inf/0
# [1] Inf
# Built-in Functions- Predefined functions- Önceden tanımlanmış fonksiyonlar
round(pi)
# [1] 3
pi
# [1] 3.141593
round(pi,2)
# [1] 3.14

#  3.2*10^(-2)
3.2e-2
# [1] 0.032


# abs()   absolute value
# sqrt()  square root of a value
# cos()  
# sin()  
# tan()  
# atan()  
# acos()  
# asin()  

# exp()  
# log()  natural log.  
# log10()  log at base 10  
# log2()  log at base 2  
# round(x, digits=0)   rounding   
# floor()  floor function
# ceiling()   ceiling function

floor(3.4)
# [1] 3
ceiling(3.4)
# [1] 4
floor(3.6)
#[1] 3
ceiling(3.6)
# [1] 4


# Types of parantehesis:
# ()  for functions
# []  for indexing
# {}  for loops

################################################################
