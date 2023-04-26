-- Q1
SELECT 
    c.name AS 'company name', p.city, p.country
FROM
    companies c
        INNER JOIN
    places p ON c.place_id = p.place_id;

-- Q2
SELECT 
    c.name, s.name
FROM
    companies c
        INNER JOIN
    stock_exchanges s ON c.place_id = s.place_id;

-- Q3
SELECT 
    s.share_id, c.name AS 'currency name'
FROM
    shares s
        INNER JOIN
    currencies c ON s.currency_id = c.currency_id;

-- Q4
SELECT 
    c.name AS 'currency name', s.share_id
FROM
    shares s
        RIGHT OUTER JOIN
    currencies c ON s.currency_id = c.currency_id;

-- Q5
SELECT 
    c.name AS 'currency name'
FROM
    shares s
        RIGHT JOIN
    currencies c ON s.currency_id = c.currency_id
WHERE
    share_id IS NULL
;

-- Q6
SELECT 
    c.name AS 'company name', cu.name AS 'currency name'
FROM
    companies c
        INNER JOIN
    shares s ON c.company_id = s.company_id
        INNER JOIN
    currencies cu ON s.currency_id = cu.currency_id;
    
-- Q7
-- backticks nb to create references 
SELECT 
    CONCAT(b.first_name, ' ', b.last_name) `brokers name`,
    s.name `stock exchange name`
FROM
    brokers b
        INNER JOIN
    broker_stock_ex ex ON b.broker_id = ex.broker_id
        INNER JOIN
    stock_exchanges s ON ex.stock_ex_id = s.stock_ex_id;

-- Q8
SELECT 
    t.trade_id,
    (t.share_amount * sp.price) AS 'Base price total'
FROM
    trades t
        INNER JOIN
    shares_prices sp ON t.share_id = sp.share_id
WHERE
    sp.time_end IS NOT NULL
        AND t.transaction_time BETWEEN sp.time_start AND sp.time_end
        OR sp.time_end IS NULL
        AND t.transaction_time > sp.time_start
;

-- Q9
SELECT 
    t.trade_id,
    t.share_amount * sp.price `Base price total`,
    t.share_amount * sp.price*0.025  `Commission`,
	t.share_amount * sp.price * 1.025  `Overall price total`
FROM
    trades t
        INNER JOIN
    shares_prices sp ON t.share_id = sp.share_id
WHERE
    sp.time_end IS NOT NULL
        AND t.transaction_time BETWEEN sp.time_start AND sp.time_end
        OR sp.time_end IS NULL
        AND t.transaction_time > sp.time_start
;


