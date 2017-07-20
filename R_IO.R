### R_IO ###

# 讀取csv /txt 檔案
getwd() # 檢視目錄所在

setwd("C:/Users/Java/Desktop/R/Learn_R") # 修改所在目錄

# read.table
test_data = read.table( "C:/Users/Java/Desktop/R/riii-master/data/match.txt" , header = TRUE , sep = "|" )
test_data

# read.csv
test_data1 = read.csv( "C:/Users/Java/Desktop/R/riii-master/data/2330.csv" , header = TRUE )
tail(test_data1)


# 寫入資料

write.table( test_data , file = "test.txt" , sep = "" ) # 將資料保存到txt檔案中

write.csv( test_data , file = "test.csv" ) # csv檔設定用 "，" 去sep


# 從RData存讀取資料

save( x = iris , file = "iris.RData" ) # 將資料儲存至RData中

rm(iris) # 刪除iris變數

load("iris.RData") # 從RData讀取資料

