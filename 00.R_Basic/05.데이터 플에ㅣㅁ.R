#### Data Frame
name = c('James', 'Maria', 'Brian')
age = c(22, 20, 25)
gender = factor(c('M','F','M'))
blood = factor(c('A','O','B'))

patients = data.frame(name, age, gender, blood)
patients

# 열 선택 및 타입 확인
patients$name
typeof(patients)
typeof(patients$name)
typeof(patients$gender)

# 행 열 인덱싱으로 선택 가능
patients[,1]    # patients$name
patients[1,]

# 하나의 값을 인덱싱 - 마리아 나이
patients$age[2]
patients[2,2]

# Filtering
patients[patients$gender == 'F',]
patients[patients$blood ==  'A',]

# Selection
patients[,c('age', 'gender','blood')]

# Filtering and Selection
patients[patients$gender == 'M', c('age','gender','blood')]
patients[c(1,3,c(2,4))]

# 레코드 추가(행 추가)
length((patients))
length(patients$name)
patients[length(patients)+1,] = c('Emma',24,'F','A')
patients


# 컬럼 추가
patients['country'] = c('UK','US','AU','US')
patients

# 크기
dim(patients)

###### Factor
genre = factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
genre
levels(genre)
typeof(genre)
####  R dataset
mean(head(cars$speed)
max(tail(cars$dist))
tail(airquality)
mean(airquality)

#### 결측치 처리
# 1. 결측치 확ㅇ니
str(airquality)
sum(is.na(airquality))
for (i in 1:length((airquality))) {
    print(sum(is.na(airquality[, i])))
}
for (col in colnames(airquality)) {
    print(paste(col, sum(is.na(airquality[,col]))))
}

# 2. 결측치 대체 또는 제거
# Ozone 결측치를 평균으로 대체
mean(airquality$Ozone, na.rm = T)
airquality$Ozone = ifelse(is.na(airquality$Ozone),
                          mean(airquality$Ozone, na.rm = T),
                          airquality$Ozone)
sum(is.na(airquality$Ozone))

# Solar.R 결측치를 중앙값으로 대체
median(airquality$Solar.R, na.rm = T)
airquality$Solar.R = ifelse(is.na(airquality$Solar.R),
                            median(airquality$Solar.R, na.rm=T),
                            airquality$Solar.R)
sum(is.na(airquality$Solar.R))

# 맨 마지막줄에 결측치 데이터를 추가한 후 제거

airquality[length(airquality$Ozone)+1,] = c(NA,NA,NA,NA,NA,NA)
tail(airquality)
airquality = na.omit(airquality)
airquality
