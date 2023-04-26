-- Q1
SELECT 
    COUNT(t.stock_ex_id) AS 'trades made NYSE'
FROM
    trades t
        INNER JOIN
    stock_exchanges se ON t.stock_ex_id = se.stock_ex_id
WHERE
    se.symbol = 'NYSE';

-- Q2
SELECT 
    SUM(t.share_amount) AS 'trades made LSE'
FROM
    trades t
        INNER JOIN
    stock_exchanges se ON t.stock_ex_id = se.stock_ex_id
WHERE
    se.symbol = 'LSE';

-- Q3
SELECT 
    COUNT(c.company_id)
FROM
    companies c
        INNER JOIN
    places p ON c.place_id = p.place_id
WHERE
    p.country = 'United Kingdom'
        AND c.name LIKE 'B%';

-- Q4
SELECT 
    b.first_name 'brokers name',
    COUNT(t.broker_id) 'number of trades'
FROM
    brokers b
        INNER JOIN
    trades t ON b.broker_id = t.broker_id
WHERE
    t.transaction_time > DATE_SUB(NOW(), INTERVAL 10 DAY)
GROUP BY b.broker_id;

-- Q5
SELECT 
    c.name 'company name',
    SUM(t.share_amount) 'total share amount'
FROM
    trades t
        INNER JOIN
    shares s ON t.share_id = s.share_id
        INNER JOIN
    companies c ON s.company_id = c.company_id
WHERE
    t.transaction_time > DATE_SUB(NOW(), INTERVAL 90 DAY)
GROUP BY c.company_id;

-- Q6
SELECT 
    p.city, COUNT(c.place_id) 'number of companies'
FROM
    places p
        INNER JOIN
    companies c ON p.place_id = c.place_id
GROUP BY c.place_id;

-- Q7
SELECT 
    c.name 'company name',
    AVG(t.price_total) 'average price total'
FROM
    trades t
        INNER JOIN
    shares s ON t.share_id = s.share_id
        INNER JOIN
    companies c ON s.company_id = c.company_id
GROUP BY c.name;

-- Q8
SELECT 
    b.first_name 'broker name',
    COUNT(bs.stock_ex_id) 'number of exchanges'
FROM
    brokers b
        INNER JOIN
    broker_stock_ex bs ON b.broker_id = bs.broker_id
GROUP BY bs.broker_id;

-- Q9
SELECT 
    cu.name 'currency name',
    COUNT(s.currency_id) 'number of shares'
FROM
    currencies cu
        INNER JOIN
    shares s ON cu.currency_id = s.currency_id
GROUP BY s.currency_id;

-- Q10



