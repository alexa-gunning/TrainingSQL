-- Q1
SELECT 
    t.stock_ex_id, AVG(t.share_amount)
FROM
    trades t
WHERE
    t.transaction_time >= DATE_SUB(NOW(), INTERVAL 30 DAY)
GROUP BY t.stock_ex_id
HAVING AVG(t.share_amount) > 1000
;

-- Q2
SELECT 
    s.name, t.stock_ex_id, AVG(t.share_amount)
FROM
    trades t inner join stock_exchanges s on t.stock_ex_id = s.stock_ex_id
WHERE
    t.transaction_time >= DATE_SUB(NOW(), INTERVAL 30 DAY)
GROUP BY t.stock_ex_id
HAVING AVG(t.share_amount) > 1000
;

-- Q3
SELECT 
    broker_id
FROM
    trades
WHERE
    stock_ex_id = 1
GROUP BY broker_id
HAVING MIN(share_amount) > 5000;

-- Q4
SELECT 
    n.first_name
FROM
    trades t
        INNER JOIN
    brokers n ON t.broker_id = n.broker_id
WHERE
    t.stock_ex_id = 1
GROUP BY t.broker_id
HAVING MIN(t.share_amount) > 5000;

-- Q5
SELECT 
    share_id
FROM
    trades
WHERE
    broker_id = 1
GROUP BY share_id
HAVING COUNT(trade_id) > 10;

-- Q6


-- Q7


-- Q8

