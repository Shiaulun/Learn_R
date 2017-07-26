# 對數據作初步整理

# 表格
# 統計值
# 圖表

# 讀取資料
cdc = load("./Statistics/cdc.Rdata")
str(cdc)
head(cdc)
names(cdc)

# 利用as開頭的function作資料轉換
cdc$exerany = as.factor(cdc$exerany)
cdc$hlthplan = as.factor(cdc$hlthplan)
cdc$smoke100 = as.factor(cdc$smoke100)
 


## 表格 ##

# 以表格呈現類別型資料
table(cdc$smoke100)

# 類別型資料的相對比例
table(cdc$smoke100)/length(cdc$smoke100) # 各類別數/總數

# 先找出資料的區間，利用cut()將資料進行分組(離散化)
summary(cdc$height)
cut(cdc$height,seq(45,95,by=5),right = F) # right參數設定表是否包含上界



# 統計值-集中趨勢量數

# 平均數 數據總和/觀測值得個數
# 中位數 由小到大排序，最中間的個數 不受離群值影響
# 眾數 出現最多的數值  例:找出賣最好的商品

# 找出平均數
mean(seq(1:10))

# 找出中位數
median(seq(1:5))

# 找出眾數
names(which.max(table(cdc$weight)))



# 統計值-離散趨勢量數

# 全距 資料中最大值與最小的差距 R = X(N) - X(1)

# 四分位距 資料中第三四分位數與第一四分位數的差距，常用來購建箱型圖
# IQR = Q3 - Q1  
# 標準差是以平均數來度量資料的離散程度

# IQR 是以中位數為基準
# 可看作是距離平均數的平均距離(距離平方作為距離)

# 變異數越大，資料越分散

# 標準差 S 非負整數數值  與度量單位有相同單位

# 全距
range(seq(50:500))

# 四分位距
IQR(cdc$weight)

# 變異數
var(cdc$weight)

# 標準差
sqrt(var(cdc$weight)) # 因為變異數為標準差平方，所以可用變異數開根號獲得
sd(cdc$weight) # 也可用sd直接求出

# 摘要數據
summary(cdc$weight)

## 共變異數(Covariance) ##   cov
# 測量兩個數值間的線性關係
# 計算列與列之間的共變異數
# 衡量兩個變量的總體誤差
# 如果兩個變量的波動幅度都很大，則看不出相關程度 

## 相關係數(Correlation COefficient) ##   cor
# 計算列與列之間的相關係數
# 顯示兩個隨機變數之間線性關係的強度和方向
# 將共變異數除以兩者的標準差
# 數值介於 -1~1之間(通常絕對值>0.7為高度正相關)

data = cdc[,c('height','weight','wtdesire','age')]
cov(data)

cor(data)



## 圖表 ##

# 量化資料(連續型資料) 1.histogram 2.Stem-leaf 3.boxplot 
#                      4.scatter plot  5.line plot
# e.g. 預期壽命 個人收入(連續型) 總人口數(離散) 年

# 質化資料 1.bar chart 2.pie chart 3.mosaic plot
# e.g. 以名稱列舉:地理區域  排序:人口數量範圍(50~100萬) 人口分成(中產階級)

#