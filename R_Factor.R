### 階層(Factor) ###

# 將資料轉換為類別資料

weather = c( "sunny" , "rainy" , "cloudy" , "rainy" , "cloudy" )

weather_category = factor(weather) # 將資料轉換為類別資料

class(weather_category)

weather_category # Levels類似於set的概念，按照編碼表內字母順序排序，重覆的只會顯示一次




# 有順序的階層

temperature = c( "Low" , "High" , "High" , "Medium" , "Low" , "Medium" )

temperature_category = factor( temperature , order = TRUE , levels = c( "Low" , "Medium" , "High" ) ) 
# order意思為有大小順序 levels意思為按Low Medium High 排序

temperature_category

temperature_category[3] > temperature_category[1]

temperature_category[4] > temperature_category[3]

levels(temperature_category)




# 快速轉換類別名稱

weather = c( "s" , "r" , "c" , "r" , "c" )

weather_factor = factor(weather)

levels(weather_factor) = c( "cloudy" , "rainy" , "sunny" )

weather_factor
