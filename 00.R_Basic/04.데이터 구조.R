#### Vectors
fruits = c('apple','banana','cherry')
numbers = c(1,2,3L)     # integer 3L 이 numeric으로 자동 타입 변환
numbers

seqs = 1:10     # 시작:끝

seqs

seqs = 6:1
nums = 1.5:5.5
print(nums)

# sequence
seq(from=1, to=10, by=2)    #  == seq(1,10,2)
seq(0, 1, 0.1)
seq(0, 1, length.out=11)    # np.linspace(0, 1, 11)

rep(c(1:3), times=2)
rep(c(1:3), each=2)


### Sorting
fruits <- c("banana","apple","cherry","mango","lemon")
numbers <- c(13,3,5,7,20,2)
sort(fruits)
sort(numbers)   # sort() 함수는 자기 파괴적이지 않음


### Indexing
fruits[1]       # 첫번째 요소 
fruits[-1]      # 첫번째 요소를 제외한 나머지
fruits[-3]

### Slicing
fruits[2:4]

## 임의 선택
fruits[c(1,4,5)]

### 값 변경
fruits[1] = 'pear'


#### List
numbers = list(1,2,3L,4+3i)
numbers[4]


## 요소의 갯수
length(fruits)
length((numbers))



##### Matrix
m1 = matrix(c(1:6), nrow =2, ncol =3)
m1
m2 = matrix(c(1:6), nrow=3, ncol = 2)
m2

m1[1,2]
m2[3,1]
thismatrix <- matrix(c("apple","banana","cherry","peach","grape","pineapple", "pear","melon","fig"),nrow = 3,ncol = 3)
thismatrix
thismatrix[c(1,2),]
thismatrix[,c(2,3)]
thismatrix[c(1,2),c(1,2)]


# bind
m1
v1 = c(10,20,30)
m1 = rbind(m1, v1)      # 행 단위로 바인딩(행추가)
m1
m1 = cbind(m1, c(100,200,300))  # 열추가
m1


# contains
'apple' %in% fruits

#크기
dim(thismatrix)
length((thismatrix))


# matrix 와 반복문
m3 = matrix(c(1:12), nrow = 3, ncol = 4)
m3
for (row in 1:nrow(m3)) {
    for (col in 1:ncol(m3)) {
        print(m3[row, col])
    }
}


m3

# 행렬 곱
m1 = matrix(c(1:6), nrow = 2, ncol = 3)
m1
m2 = matrix(c(1:6), nrow = 3, ncol = 2)
m2
m1 %*% m2

# 전치 행렬(transpose)
t(m1)

##### Array
arr = array(1:24, dim = c(2,3,4))
dim(arr)
length(arr)
arr[1,1,4]
