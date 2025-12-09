SELECT
    City,
    COUNT(*) AS num_listings,
    ROUND(AVG(Rent), 2) AS avg_rent,
    ROUND(percentile_approx(Rent, 0.5), 2) AS median_rent
FROM cleaned_house_rent
GROUP BY City
ORDER BY avg_rent DESC;
