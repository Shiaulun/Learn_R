# 函式(Function)

f = function( a , b ){
  print( a + b )
}

f( 2 , 3 )

# 實際範例 : 對戰矩陣轉換

# 請寫出一個函式可以讀取檔案match.txt，並將檔案中的對戰成績轉換成一個矩陣(Matrix)mat。

match = read.table( "./data/match.txt" , header = F , sep = "|" )
match
str(match)
mat= matrix( rep( -1 , 5^2 ) , nrow = 5 ) # 做出一個初始值為-1的5*5矩陣
rownames(mat)=c("A","B","C","D","E")
colnames(mat)=c("A","B","C","D","E")
head(match)
for(i in 1:nrow(match)){
  mat[match[i,1],match[i,2]]=match[i,3]
}
mat
