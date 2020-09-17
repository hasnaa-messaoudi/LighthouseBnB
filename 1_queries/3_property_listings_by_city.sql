SELECT properties.title, avg(property_reviews.rating) as avg_rating
FROM property_reviews
JOIN  properties on properties.id = property_reviews.property_id
WHERE properties.city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY properties.cost_per_night asc
LIMIT 10;