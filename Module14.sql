-- Q1
SELECT t.stock_ex_id,
       t.trade_id,
       t.transaction_time
FROM   trades t
WHERE t.transaction_time = 
(
SELECT MIN(t2.transaction_time)
FROM   trades t2
WHERE  t2.stock_ex_id = t.stock_ex_id
);

-- Q2
SELECT 
    t.broker_id, t.stock_ex_id, t.price_total
FROM
    trades t
WHERE
    price_total = (SELECT 
            MAX(t2.price_total)
        FROM
            trades t2
        WHERE
            t.stock_ex_id = t2.stock_ex_id);

-- Q3
SELECT 
    e.name, t.trade_id, t.transaction_time
FROM
    trades t
        INNER JOIN
    stock_exchanges e ON t.stock_ex_id = e.stock_ex_id
WHERE
    t.transaction_time = (SELECT 
            MIN(t2.transaction_time)
        FROM
            trades t2
        WHERE
            t2.stock_ex_id = t.stock_ex_id);

-- Q4
SELECT 
    b.first_name, s.name, t.price_total
FROM
	stock_exchanges s inner join
    trades t
    on s.stock_ex_id = t.stock_ex_id
    inner join brokers b
    on t.broker_id = b.broker_id
    
WHERE
    price_total = (SELECT 
            MAX(t2.price_total)
        FROM
            trades t2
        WHERE
            t.stock_ex_id = t2.stock_ex_id);


-- Q5
SELECT MONTHNAME(t.transaction_time) AS month,
       t.broker_id,
       t.share_amount
FROM   trades t
WHERE t.share_amount = 
(
SELECT MIN(t2.share_amount)
FROM trades t2
WHERE MONTH(t.transaction_time) = MONTH(t2.transaction_time)
);

-- Q6


