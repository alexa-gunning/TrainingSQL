-- Q1
SELECT 
    b.broker_id, AVG(t.price_total) 'average price total'
FROM
    brokers b
        INNER JOIN
    trades t ON b.broker_id = t.broker_id
GROUP BY t.broker_id
HAVING AVG(t.price_total) > 4000000
;
-- Q2
SELECT 
    stock_ex_id, MIN(transaction_time)
FROM
    trades
GROUP BY stock_ex_id
HAVING MIN(transaction_time) > DATE_SUB(NOW(), INTERVAL 365 DAY)
;

-- Q3
SELECT 
    currency_id,
    COUNT(currency_id) 'shares priced in that currency'
FROM
    shares
GROUP BY currency_id
HAVING COUNT(currency_id) >= 4
;

-- Q4
SELECT 
    share_id, SUM(share_amount) 'total share amount'
FROM
    trades
GROUP BY share_id
HAVING SUM(share_amount) > 100000
;

-- Q5
SELECT 
    place_id, COUNT(place_id)
FROM
    companies
GROUP BY place_id
HAVING COUNT(place_id) > 2;

-- Q6
SELECT share_id
FROM   trades
GROUP BY share_id
HAVING MAX(price_total) > 1000000;

-- Q7
SELECT share_id
FROM   trades
WHERE  broker_id = 1
GROUP BY share_id
HAVING COUNT(*) > 2;

-- Q8
SELECT 
  share_id,  COUNT(share_id)
FROM
    trades
WHERE
    price_total > 1000000
GROUP BY share_id
HAVING COUNT(share_id) > 5;


