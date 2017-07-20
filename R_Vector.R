### Vector ###

numeric(5)

typeof(numeric(5)) #長度為5的numeric向量(會建立5個預設為0的向量)

logical(5) #長度為5的logical向量(會建立5個預設為FALSE的向量)

typeof(logical(5))




### 向量運算 ###

# 兩個長度相等的向量可進行數學運算

x = c(1,2,3,7)

y = c(2,3,5,1)

x + y 

x * y 

x - y

x / y




# 兩個長度不相等的向量進行數學運算

x = c(1,2,3,7)

x + 10

x + c(10)

x + c(12)

x + c(1,2,1,2)




# 求向量長度

x = c(1,2,3,7)

length(x2)




# 增加向量元素

x = c(1,2,3,7)

other = 15

c(x,other) # 會直接在x3的向量後再加一個元素other




# 將向量作加總

x = c(1,2,3,7)

sum(x)




# 查詢該如何使用sum函式，使用 "?" + 欲查詢的函式 或 使用 help(欲使用的函式)

?sum

help(sum)




### 指定名稱 ###

# 可以使用names指定向量名稱

height_vec = c(180,169,173)

names(height_vec) = c("Brain", "Toby", "Sherry") # 替height_vec指定名稱

height_vec




# 判斷向量內容是否符合條件

height_vec > 175

height_vec <= 175

height_vec == 180 # 要做條件比較必須用==，不可用=，因為=是指派=右邊數值給=左邊數值

height_vec != 180 # " != " 表示不等於




# 條件篩選

height_vec[c(1)] # 用index方式篩選出height_vec第一個數值

height_vec['Brain'] # 運用element name 篩選第一個數值資料

height_vec[height_vec > 175] # 運用condition (boolean vector) 去篩選height_vec中值大於175的element




# 範例-計算BMI (公式為: BMI = 體重(公斤) / 身高^2(公尺^2))

BMI_cal = function( height , weight){
  BMI = weight / (height / 100)^2
  if(BMI<18.5){
    print("Your are too thin!!")
    sprintf("You BMI is %.2f",BMI)
  }
  if(BMI>24){
    print("You are too fat!!!")
    sprintf("You BMI is %.2f",BMI)
  }
  else{
    print("You are good look body!!")
    sprintf("You BMI is %.2f",BMI)
  }}
BMI_cal(183,72.5)




### seq() ###

# 使用seq()產生向量

seq(from=1,to=20) # 創造出1-20數值，沒給預設間隔為1

1:20 # 間隔為1

seq(1,20,by=2) # 間隔為2

seq(1,20,2) #間隔為2

seq(1,20,length=3) # 此為1-20分3等分




### rep() ###

# 使用rep()產生向量，rep為repeat的意思

rep(1,times=5)

rep(c(1,2),times=5) # repeat c(1,2) 5次

rep(c(1,2),each=5) # repeat 1與2各5次

rep_len(c(1,2),5)

rep(c(1,2),c(1,2)) # 結果為 1 2 2




### paste() ###

# 使用paste()作字串串接

paste("the","big","bang","theory") # 將字串串接起來，預設中間用space串接

paste("big","bang",sep="-") # 將字串用hyphen串接

length(paste("the","big","bang","theory")) # 計算此字串長度 結果為1




# 使用paste()作向量串接

paste(c("big","bang","theory"),1:2) # 因為theory位置為3 超過後面串接的向量1:2 故會回到1

paste(c("big","bang","theory"),1:3) # 向量相等 所以變成 big 1 bang 2 theory 3

length(paste(c("big","bang"),1:2)) # 長度為2 因為有 big 1 與 bang 2
