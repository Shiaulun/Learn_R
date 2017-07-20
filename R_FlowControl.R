### 流程控制(Flow Control) ###

# if及else的判斷
x = 5 ;
if( x > 3 ){
  print("x>3");
}else{
  print("x<=3");
}




# 使用else if
x = 5;
if(x>3){
  print("x>3");
}else if (x==3){
  print("x==3");
}else{
  print("x<3");
}




# For 迴圈
for(i in 1:10){
  print(i);
}

# 1~1000的總和
sum = 0 ;
for(i in 1:1000){
  sum = sum + i;
}




# 兩層for迴圈
mat = matrix( 1:9 , byrow = TRUE , nrow = 3 )
for(i in seq_len(nrow(mat))){
  for(j in seq_len(ncol(mat))){
    print(mat[i,j])
  }
}




# 使用while迴圈

# 當不滿足while中定義的條件時，才會跳出迴圈
sum = 0 ;
cnt = 0 ;
while(cnt<=100){
  sum = sum + cnt ;
  cnt = cnt + 1 ;
}
sum

# 練習題-九九乘法表
1:9 %*% t(1:9)
