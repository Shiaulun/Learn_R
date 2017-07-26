# 迴圈函式

# lapply 將函式套用在清單(List)上的每一個元素
# sapply 產生較lapply簡化的結果
# apply 將函式套用在陣列(array)中
# tapply 套用函式在向量(Vector)的部分子集合

## lapply ##
x = list(c(1,2,3,4),c(5,6,7,8))
lapply(x,sum) # 將list x中的row 及 col list 分別加總
# 套用在陣列清單中
m1 = matrix( 1:4 , byrow = TRUE , nrow = 2 )
m2 = matrix( 5:8 , byrow = TRUE , nrow = 2 )
li = list( m1 , m2 )
lapply(li,mean)

# 串接匿名函式
# 可串接匿名函式於輸入參數中
lapply(li,function(e) e[1,])

# sapply
x = list( c(1,2,3,4) , c(5,6,7,8) )
sapply(x,sum)
# 與lapply作比較
class(lapply(x,sum))

class(sapply(x,sum))


# appaly
m = matrix( 1:4 , byrow = TRUE , nrow = 2 )
apply( m , 1 , sum ) # rowsums  第二個參數1表row 2表col
apply( m , 2 , sum )


# tapply
x = c( 80 , 70 , 59 , 88 , 72 , 57 )  # 第一個參數為向量
t = c( 1 , 1 , 2 , 1 , 1 , 2 )        # 第二個參數為組別
tapply(x,t,mean) # 第三個參數為function
