### 清單(Lists) ###

# 可以混雜不同的資料型態

item = list( thing = "hat" , size = 8.25 )
item




# 使用$取得內容物

test = list( name = "Toby" , score = c( 87 , 57 , 72) )

test$name 

test$score




# 取得內含data frame的值

flower = list ( title = " iris dataset " , data = iris )
flower$data[ 1:3 , c( "Sepal.Width" , "Sepal.Length") ]
