###### R 변수
name <- 'James'
age = 25    # 할당 연산자로 <-, = 을 사용 할 수있음

name
age
print(name, age)# Error / print()에서는 하나의 인자만 사용가능
print(paste(name,age))
print(paste0(name,age))

# 변수명
person.name <- 'Maria'
person.gender <- 'Female'
person.age = 23

##### R 데이터 타입
# 1. numeric
x= 10.5
class(x)

# 2. integer
y =10L
class(y)


# 3. complex(복소수)
z = 9+3i
class(z)
print(z*z)

#4. character(a.k.a. string)
s = 'R is exciting'
class(s)
# 5. logical(a.k.a. boolean - TRUE, FALSE, T, F)
class(T)

# Type conversion
as.numeric((y))
y
as.numeric(T)
as.character(F)

###### Math

10+5
'10' + '5' # string concatenation 은 paste 함수 사용
max(5,10,15)
sqrt(16)
ceiling(1.4)
floor(2.3)

##### Strings
str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit."
str
cat(str)
length((str))
nchar(str)

####### 연산자(Operator)
# 1. 산술 연산자: +, -, *, / 
2^5 # 32, exponent
5 %% 2

# 2. 비교 연산자 : 파이썬과 동일

# 3. 논리 연산자:
x > 10 && x < 20 # Logical and, 10<x<20
person.age >24 || age >24
!(nchar(s)>5) # Logical not

c(F,F,T,T) & c(F,T,F,T)
c(F,F,T,T) | c(F,T,F,T)


