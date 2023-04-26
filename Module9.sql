-- Q1

-- double check 

SELECT 
    b.broker_id, AVG(t.price_total) 'average price total'
FROM
    brokers b
        INNER JOIN
    trades t ON b.broker_id = t.broker_id
GROUP BY t.broker_id;

-- Q2
SELECT 
    stock_ex_id, MIN(transaction_time) 
FROM
    trades
GROUP BY stock_ex_id;

-- Q3
SELECT 
    currency_id,
    COUNT(currency_id) 'shares priced in that currency'
FROM
    shares
GROUP BY currency_id;

-- Q4
SELECT 
    share_id, SUM(share_amount) 'total share amount'
FROM
    trades
GROUP BY share_id;

