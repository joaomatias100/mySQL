SELECT 
    country_code AS countries, SUM(population) AS total
FROM
    City
GROUP BY countries
ORDER BY total DESC;
