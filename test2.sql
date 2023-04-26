-- Write a query which shows the lowest actual price from the item table.
SELECT 
    MIN(actual_price)
FROM
    item;
    
    -- Write a query which shows the highest and lowest actual price from the item table The results should be displayed in a single column.
SELECT 
    MAX(actual_price) 'Min and max actual prices'
FROM
    item 
UNION SELECT 
    MIN(actual_price)
FROM
    item;
 
 -- Write a query which shows the average list price for each product_id - use the prices table. 
 -- Round the averages to two decimal places and order by the product_id

SELECT 
    product_id, ROUND(AVG(list_price), 2) 'average list price'
FROM
    price
GROUP BY product_id
ORDER BY product_id;
    
-- Write a query which shows customers who’ve made 10 or more orders. Show the customer_id and the number of orders they’ve made
 SELECT 
    customer_id, COUNT(customer_id) 'number of orders made'
FROM
    sales_order
GROUP BY customer_id
HAVING COUNT(customer_id) >= 10;  
    
-- Write a query which shows any departments where 3 or more people earn over 1500
-- (2 columns: department_id, number of people earning over 1500). 
    
SELECT 
    department_id,
    COUNT(department_id) 'number of people earning over 1500'
FROM
    employee
WHERE
    salary > 1500
GROUP BY department_id
HAVING COUNT(department_id) >= 3
;
    
    
    
    
    