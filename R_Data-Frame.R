### R_Data-Frame ###

# 建立 Vector

days <- c( "mon" , "tue" , "wed" , "thu" , "fri" )

temp <- c( "22.2" , "21" , "23" , "24.3" , "25" )

rain <- c( TRUE , TRUE , FALSE , FALSE , TRUE )

df <- data.frame( days , temp , rain )

df

class(df) # 檢視資料型態

str(df) # 檢視架構

summary(df) # 檢視資料摘要




# 使用R內建的資料集

data() # 表列內建資料集

data(iris) # 使用資料集  SEPAL花萼 PETAL花瓣

class(iris) # 觀察讀取到的資料集型態

head(iris) # 觀看前幾筆資料

head( iris , 10 )

tail(iris) # 觀看後幾筆資料

tail( iris , 10 )




# 篩選dataframe資料-利用index取值

iris[ 1:3 , ] # 取前3列資料

iris[ 1:3 , 1] # 取前3列第一行資料




# 篩選dataframe資料-利用name取值

iris[ 1:3 , "Sepal.Length" ] # 利用name的方式取前3列的Speal.Length資料

iris$"Sepal.Length"[1:3] # 利用iris內的變數Sepal.Length 取 1:3 列的資料
iris$Sepal.Length[1:3] 

# 篩選dataframe資料-利用condition取值

setosa.data = iris[ iris$Species == "setosa" , 1:5 ]  # 取出iris$Species == "setosa"的前5筆資料

head(setosa.data)

# 資料轉換

iris$Species_new = ifelse(iris$Species %in% c("setosa"), "IsSetosa","Notsetosa")


###  資料合併與排序  ###

# 以Merge做資料合併

flower.type = data.frame(Species = "setosa" , Flower = "iris")

merge( flower.type , iris[1:3,] , by = "Species" ) # 利用 Species = "setosa" 將2個不同的dataframe merge起來

# 用order做資料排序
head(iris[ order( iris$Sepal.Length , decreasing = TRUE) , ][1:5])




# 練習題

#--- 找出股票資料(stock_data)中2014年3月到8月間台積電最高收盤價(close) 

data = read.csv( "C:/Users/Java/Desktop/R/riii-master/data/2330.csv", header = TRUE )

tail(data)

data$Date = as.Date( data$Date ) # 日期需要有階層概念才可以比較

date = data[data$Date > "2014-03-01" & data$Date <"2014-08-31",]

date[ order( date$Close , decreasing = TRUE) , ][1:7][1,]


