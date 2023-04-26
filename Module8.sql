SELECT 
    share_id
FROM
    trades
WHERE
    broker_id = 1;
    
SELECT 
    share_id
FROM
    trades
WHERE
    stock_ex_id = 3;
    

-- Q1
SELECT 
    share_id
FROM
    trades
WHERE
    broker_id = 1 
UNION SELECT 
    share_id
FROM
    trades
WHERE
    stock_ex_id = 3;

-- Q2
-- DONT NEED TO DO

-- Q3
-- DONT NEED TO DO


