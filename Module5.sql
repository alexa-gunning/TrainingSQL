-- Q1
SELECT 
    name
FROM
    currencies;

-- Q2
SELECT 
    *
FROM
    trades
WHERE
    MONTH(transaction_time) = MONTH(NOW())
        AND YEAR(transaction_time) = YEAR(NOW());

-- Q3
SELECT 
    name
FROM
    companies
WHERE
    place_id = 3;
 
 -- Q4
SELECT 
    symbol
FROM
    stock_exchanges
WHERE
    name = 'London Stock Exchange';

-- Q5
SELECT 
    city
FROM
    places
WHERE
    country = 'France';

-- Q6
SELECT 
    last_name
FROM
    brokers
WHERE
    first_name = 'John';

-- Q7
SELECT 
    *
FROM
    trades
WHERE
    transaction_time > DATE_SUB(NOW(), INTERVAL 7 DAY)
       -- AND YEAR(transaction_time) = YEAR(NOW())
;

-- Q8
SELECT 
    broker_id
FROM
    broker_stock_ex
WHERE
    stock_ex_id = 1;

-- Q9
SELECT 
    *
FROM
    companies
WHERE
    company_id = 2;

-- Q10
SELECT 
    *
FROM
    currencies
WHERE
    currency_id = 1;

-- Q11
SELECT 
    name
FROM
    stock_exchanges
WHERE
    symbol = 'TSE';

-- Q12
SELECT 
    first_name, last_name
FROM
    brokers
WHERE
    broker_id = 2;

-- Q13
SELECT 
    trade_id, price_total
FROM
    trades
WHERE
    stock_ex_id = 3 AND share_amount > 20000;

-- Q14
SELECT 
    broker_id
FROM
    broker_stock_ex
WHERE
    stock_ex_id = 2
ORDER BY broker_id;

-- Q15
SELECT 
    name
FROM
    currencies
WHERE
    name LIKE '%British%';

-- Q16
SELECT 
    name
FROM
    stock_exchanges
WHERE
    symbol LIKE '%SE%'
ORDER BY name DESC;

-- Q17
SELECT DISTINCT 
    share_id
FROM
    shares_prices
WHERE
    price >= 400 AND price <= 500;

-- Q18
SELECT DISTINCT 
    share_id
FROM
    trades
WHERE
    transaction_time > DATE_SUB(NOW(), INTERVAL 1 YEAR);

-- Q19
SELECT 
    trade_id
FROM
    trades
WHERE
    YEAR(transaction_time) = YEAR(NOW());

-- Q20
SELECT 
    *
FROM
    trades
WHERE
    YEAR(transaction_time) = YEAR(NOW()) - 1;

-- Q21
SELECT 
    *
FROM
    trades
WHERE
    transaction_time > DATE_SUB(NOW(), INTERVAL 1 QUARTER)
        AND YEAR(transaction_time) = YEAR(DATE_ADD(NOW(), INTERVAL - 1 YEAR))
;
	
-- Q22
SELECT 
    trade_id
FROM
    trades
WHERE
    transaction_time > DATE_SUB(NOW(), INTERVAL 90 DAY)
        AND price_total > 1000000;

-- Q23
SELECT 
    trade_id, (price_total / share_amount) AS 'Price per share'
FROM
    trades;
