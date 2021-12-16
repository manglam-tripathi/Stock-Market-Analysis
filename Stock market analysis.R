install.packages("quantmod")

library(quantmod)

loadSymbols(c("AMZN","GOOG","BABA"))

head(AMZN)
head(BABA)
tail(GOOG)

chartSeries(BABA)

addMACD() # adds moving average convergence divergence signals

addBBands() # Adds Bollinger bands to the stock price.

addCCI() # Add Commodity channel index.

addADX() #Add Directional Movement Indicator

addCMF() #Add Money Flow chart



seriesHi(BABA) # To check the highest point of price. 
seriesLo(BABA) # To check the lowest point of price.
only_2015_values<-BABA ['2015'] #Subset shares values all BABA in 2015
head(only_2015_values);tail(only_2015_values) 
dadafrom2017onwards<-BABA ['2017::'] # BABA data, from 2017 onward 
head(dadafrom2017onwards);tail(dadafrom2017onwards)


#ANALYSIS OF RETURNS
Returns_by_day<-dailyReturn(BABA) # Returns by day
head(Returns_by_day);tail(Returns_by_day)

Returns_by_week<-weeklyReturn(BABA) # Returns by week
head(Returns_by_week)

head(Returns_by_week);tail(Returns_by_week)

Returns_by_Month<-monthlyReturn(BABA)

head(Returns_by_Month);tail(Returns_by_Month)

Returns_by_yaer<-yearlyReturn(BABA)

head(Returns_by_yaer);tail(Returns_by_yaer)
baba_ALLReturns<-allReturns(BABA) 

head(baba_ALLReturns);tail(baba_ALLReturns)

#ANALYSIS OF KOTAK BANK stock
getSymbols("KOTAKBANK.BO", src="yahoo") chartSeries(KOTAKBANK.BO)

addMACD() # adds moving average convergence divergence signals 
addBBands() # Adds Bollinger bands to the stock price. 
addCCI() # Add Commodity channel index. 
addADX() #Add Directional Movement Indicator addCMF() #Add Money Flow chart

Returns_by_yaer_KOTAKBANK.BO<-yearlyReturn(KOTAKBANK.BO)
head(Returns_by_yaer_KOTAKBANK.BO);tail(Returns_by_yaer_KOTAKBANK.BO)

#ANANLYSIS OF HDFC BANK
getSymbols("HDFCBANK.BO", src="yahoo")

chartSeries(HDFCBANK.BO) 
chartSeries(BABA,multi.col = T,theme = "white",subset = "2015-1::2018-11")

addMACD() # adds moving average convergence divergence signals 
addBBands() # Adds Bollinger bands to the stock price. 
addCCI() # Add Commodity channel index. 
addADX() #Add Directional Movement Indicator addCMF() #Add Money Flow chart

