USE Stock;

select * from stock limit 5;



select Ticker as "Stock" ,avg(VOLUME) AS "Avg Daily Traded Volume" FROM STOCK 
	group by ticker 
		order by avg(volume)  DESC ;
        
        
        
        
select Ticker as "Stock" ,avg(beta) AS "Avg of Beta values" FROM STOCK 
	group by ticker 
		order by avg(beta)  DESC ;
        
        
        
        
select Ticker as "Stock" ,sum(dividend_amount) AS "Dividend Amount" FROM STOCK 
	group by ticker 
		order by avg(dividend_amount)  DESC ;
        
        
        
        
select Ticker as "Stock" ,avg(p_e_ratio) AS "Avg P/E Ratio" FROM STOCK 
	group by ticker 
		order by avg(p_e_ratio)  DESC ;
        
        
        
        
select Ticker as "Stock" ,avg(market_cap) AS "Avg Market Capital" FROM STOCK 
	group by ticker 
		order by avg(market_cap)  DESC ;
        
        
        
select Ticker as "Stock" ,round(avg(adjusted_close),2)  AS "Avg Stock Price" ,
	max(52_week_high) as "52 Week High" ,round((max(52_week_high)-avg(adjusted_close)),2) as "Difference"
FROM STOCK 
	group by ticker 
		order by ticker  DESC ;
        
        
        
        
select Ticker as "Stock" ,round(avg(adjusted_close),2)  AS "Avg Stock Price" ,
	min(52_week_low) as "52 Week Low" ,round(-(min(52_week_low)-avg(adjusted_close)),2) as "Difference"
FROM STOCK 
	group by ticker 
		order by ticker  DESC ;
        
        
        
        
select TICKER,date,rsi_14_days as "RSI (14 Days)",MACD ,
(CASE 
WHEN RSI_14_DAYS <=45 AND MACD >0 THEN "BUY"
WHEN RSI_14_DAYS >=69 AND MACD <0 THEN "SELL"
ELSE "WAIT"
END) AS "Buy/Wait/Sell"
 FROM STOCK;
 