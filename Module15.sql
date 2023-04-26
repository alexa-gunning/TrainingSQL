-- Q1
SELECT 
    broker_id, ROUND(AVG(share_amount), 0)
FROM
    trades
GROUP BY broker_id;

-- Q2
SELECT 
    MIN(share_amounts)
FROM
    (SELECT 
        broker_id, ROUND(AVG(share_amount), 0) AS share_amounts
    FROM
        trades
    GROUP BY broker_id) mins;

-- Q3
SELECT 
    brokers.broker_id, shares
FROM
    (SELECT 
        broker_id, ROUND(AVG(share_amount), 0) AS shares
    FROM
        trades
    GROUP BY broker_id) a
        RIGHT JOIN
    brokers ON brokers.broker_id = a.broker_id
;

-- Q4
SELECT 
    share_id, COUNT(share_id)
FROM
    trades
GROUP BY share_id;

-- Q5
SELECT 
    MAX(max1)
FROM
    (SELECT 
        share_id, COUNT(share_id) AS max1
    FROM
        trades
    GROUP BY share_id) maxs;










