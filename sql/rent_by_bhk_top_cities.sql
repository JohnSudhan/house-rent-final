WITH top_cities AS (
    SELECT City
    FROM cleaned_house_rent
    GROUP BY City
    ORDER BY COUNT(*) DESC
    LIMIT 5
)
SELECT
    c.City,
    c.BHK,
    COUNT(*) AS listings,
    ROUND(AVG(c.Rent), 2) AS avg_rent
FROM cleaned_house_rent c
JOIN top_cities t
    ON c.City = t.City
GROUP BY c.City, c.BHK
ORDER BY c.City, c.BHK;
