### gglplot2套件 ###
install.packages("ggplot2")
library('ggplot2')

load("C:/Users/Java/Desktop/R/riii-master/Statistics/cdc.Rdata") # Rdata類型資料必需用load型式讀取


cdc$exerany=as.factor(cdc$exerany)  # 因資料將類型資料誤判成數值，用as factor轉換

cdc$hlthplan=as.factor(cdc$hlthplan)

cdc$smoke100=as.factor(cdc$smoke100)

g <- ggplot(cdc,aes(x=height,y=weight)) # 先將畫布繪出
g

# 繪製點散布圖
g + geom_point(aes(col=exerany))




# 繪製 bar chart
g <- ggplot(cdc,aes(x=genhlth))
g

g <- g + geom_bar()
g

g <- g + geom_bar(fill='snow',color='black') # 加上邊線及填滿顏色 fill:填滿顏色 color:邊線顏色
g

g <- g + ylab('次數') + ggtitle('cdc') # 將title改為cdc 並將Count改為次數
g



# 以ggplot2繪製bar chart
g_bygrp <- ggplot(cdc,aes(x=exerany,fill=genhlth))
g_bygrp + geom_bar(position='dodge') # 用dodge(並排)方式呈現

g_bygrp + geom_bar(position='stack') # 用stack方式呈現(預設)

g_bygrp + geom_bar(position='identity') # 用identity(覆蓋)方式呈現，如要要明顯看出要另外做透明化處理，不然部分會被覆蓋


# 繪製預先分組過的資料
precounted = as.data.frame( table( cdc$genhlth , dnn = c('genhlth') ) )
precounted
# 設定參數
stat = 'identity' # 已經統計好的
ggplot( precounted , aes( x = genhlth , y = Freq ) ) + geom_bar( stat = 'identity' )




# 分組繪圖
g <- ggplot( cdc , aes( x = weight ) )
g <- g + geom_histogram() + facet_wrap(~genhlth)




# 輸出圖形
ggsave( filename = 'shiaulun_ggplot2.png',plot = g)
