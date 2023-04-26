-- Q1 
select t.stock_ex_id, t.trade_id, t.transaction_time 
from trades t  where t.transaction_time = (
select min(t2.transaction_time)
from trades t2
where t.stock_ex_id = t2.stock_ex_id
);