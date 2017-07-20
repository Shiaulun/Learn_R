### 陣列(Matrix) ###




# 產生陣列

matrix( 1:9 , byrow = TRUE , nrow = 3 ) # 產生1-9 以row排列 共有3個row的matrix

matrix( 1:9 , nrow = 3 ) # 預設為以col排列 共有3個row的matrix




# 新增欄位與列的名稱

kevin = c( 85 , 73 )

marry = c( 72 , 64 )

jerry = c( 59 , 66 )

mat1 = matrix ( c( kevin , marry , jerry ) , nrow = 3 , byrow = TRUE )

mat1

colnames(mat1) = c( "first" , "second" ) # 替mat1內的col命名

rownames(mat1) = c( "kevin" , "marry" , "jerry" )

mat1




# 矩陣基本操作

dim(mat1) # dim = dimension 由此function可知mat1為 3 * 2 矩陣

nrow(mat1)

ncol(mat1)

t(mat1) # 矩陣轉置(transpose) ---- 變成 2 * 3 矩陣




# 篩選舉陣資料-利用index取值

mat1[ 1 , ] # 取第一列 取出mat1矩陣中第一個row的全部資料，意即取第一個row，取全部col

mat1[ , 1 ] # 取第一行 取出mat1矩陣中第一個col的全部資料，意即取第一個col，取全部row

mat1[ 1:2 , ] # 取第一列及第二列中全部資料




# 篩選矩陣資料-利用name取值

mat1[ c( "kevin" , "jerry") , ]

mat1[ c( "kevin" , "jerry"), "first" ] # 取出kevin及jerry第一次考試的成績資料




# 新增列

mat2 = rbind( mat1 , c( 78 , 63 ) ) # 在原本的row 下新增一列row(沒rowname，但有值) first為78 ，second為63

mat2 

rownames(mat2)[nrow(mat2)] = "sam"  # 替最後一列新增一個rowname sam 

mat2

# 新增行

mat3 = cbind( mat2 , c( 82 , 77 , 70 , 64 ) ) # 在原本的col旁再新增一行col(沒colname，但有值 kevin 82 , marry 77 , jerry 70 , sam 64)

colnames(mat3)[ncol(mat3)] = "third"  # 替最後一行新增一個colname third

mat3




# 矩陣列欄平均和加總

rowSums(mat3) # 計算出每一個row各別的總和

colSums(mat3) # 計算出每一個col各別的總和

rowMeans(mat3) # 計算出每一個row各別的平均

colMeans(mat3) # 計算出每一個col各別的平均




# 矩陣基本運算

m1 = matrix( 1:4 , byrow = TRUE , nrow = 2 )

m2 = matrix( 5:8 , byrow = TRUE , nrow = 2 )

m1 + m2 

m1 - m2

m1 * m2 # m1 * m2 只是2矩陣內同位置元素相乘，與 m1 %*% m2 是不同的




# 矩陣乘積

m1 %*% m2  # 值分別為 1*5+2*7 , 1*6+2*8 , 3*5+4*7 , 3*6 + 4*8

mat1



# 練習題 : 求成績加權平均

#---如果老師希望每個人最後總成績以加權計算，第一次考試佔40%，第二次佔60%，請用矩陣運算達成---#

mat1

mat4 = matrix( c( 0.4 , 0.6) , ncol = 1)

mat4

add_weight = mat1 %*% mat4

add_weight

