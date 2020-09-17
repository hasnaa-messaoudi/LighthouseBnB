SELECT city, count (reservations.property_id) as total_reservations
FROM  properties
JOIN  reservations on reservations.property_id = properties.id
GROUP BY city
ORDER BY total_reservations desc;