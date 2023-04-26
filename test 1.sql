
SELECT 
    *
FROM
    sales_order
WHERE
    customer_id = 100;

SELECT 
    concat(first_name, ' ', last_name) 'Name', salary, commission
FROM
    employee
WHERE
    salary > 1500 AND commission IS NOT NULL;

SELECT 
    customer_id
FROM
    sales_order
WHERE
    ship_date = CURDATE();

SELECT 
    CONCAT(e.first_name, ' ', e.last_name) 'Employee name',
    d.name 'Department name'
FROM
    employee e
        INNER JOIN
    department d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;

SELECT 
    name
FROM
    customer
WHERE
    customer_id NOT IN (SELECT 
            customer_id
        FROM
            sales_order);
            
            
            -- docs answers test 
 SELECT *
FROM sales_order
WHERE customer_id = 100;

SELECT concat(first_name, ' ', last_name) 'Name', salary, commission
FROM employee
WHERE salary > 1500 AND commission IS NOT NULL;

SELECT customer_id 
FROM sales_order
WHERE ship_date = curdate();

SELECT concat(e.first_name, ' ', e.last_name) 'employee name', d.name 'department name'
FROM employee e 
INNER JOIN department d
on e.department_id = d.department_id;

SELECT name from customer 
WHERE customer_id NOT IN (
SELECT customer_id 
FROM sales_order);

