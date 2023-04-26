-- Write a query which shows the customer id which made the most recent order.
--  (1 row) – use a simple subquery
SELECT 
    customer_id
FROM
    sales_order
WHERE
    order_date = (SELECT 
            MAX(order_date)
        FROM
            sales_order);
            
-- Write a query showing name of the employee with the lowest salary 
-- plus the name of their department.
--  (2 rows – 2 employees are equal lowest) - use a simple subquery
SELECT 
    concat(e.first_name, ' ', e.last_name) 'employee name', d.name 'department'
FROM
    employee e
        INNER JOIN
    department d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
WHERE
    e.salary = (SELECT 
            MIN(salary)
        FROM
            employee);
            
--  Write a query which lists the names of the employees with the lowest salary for
-- each department id (3 columns: department_id, employee name, salary). (10 rows) 
-- – use a correlated subquery
SELECT 
    e.department_id,
    CONCAT(e.first_name, ' ', e.last_name) 'employee name',
    e.salary
FROM
    employee e
WHERE
    salary = (SELECT 
            MIN(e2.salary)
        FROM
            employee e2
        WHERE
            e.department_id = e2.department_id);

-- Write a query which shows the highest number of orders made by a single customer. 
-- (1 row) – use an inline view
SELECT 
  MAX(orders) 'maximum orders made by a customer'
FROM
    (SELECT 
        COUNT(customer_id) AS orders
    FROM
        sales_order
    GROUP BY customer_id) a;