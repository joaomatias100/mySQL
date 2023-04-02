SELECT 
    SUM(city.population) AS totalPop,
    country.continent AS continent
FROM
    city
JOIN
    country ON city.country_code = country.code
GROUP BY continent
ORDER BY totalPop DESC;
