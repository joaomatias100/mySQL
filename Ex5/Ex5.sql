USE Ex5;

SELECT 
    CONCAT(f_name, ' ', l_name) full_name
FROM
    customer 
UNION SELECT 
    CONCAT(first_name, ' ', last_name) full_name
FROM
    employee
ORDER BY full_name
