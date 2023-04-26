-- Q1
select b.first_name, b.last_name
from brokers b inner join broker_stock_ex ex 
on b.broker_id = ex.broker_id
where ex.stock_ex_id = 1;

-- Q2
select  b.first_name, b.last_name
from brokers b inner join broker_stock_ex ex on b.broker_id = ex.broker_id
inner join stock_exchanges se on ex.stock_ex_id = se.stock_ex_id
where se.symbol = 'NYSE';

-- Q3
select c.name
from companies c inner join places p 
on c.place_id = p.place_id
where p.city = 'London';

-- Q4
select p.city, p.country
from places p where p.place_id not in (
select place_id from companies
)
;

-- Q5
select c.name, cu.name
from companies c inner join shares s on c.company_id = s.company_id
inner join currencies cu on s.currency_id = cu.currency_id;

-- Q6
select b.first_name, b.last_name
from brokers b inner join broker_stock_ex ex on b.broker_id = ex.broker_id
inner join stock_exchanges se on ex.stock_ex_id = se.stock_ex_id
inner join places p on se.place_id = p.place_id
where p.country = 'United Kingdom';
