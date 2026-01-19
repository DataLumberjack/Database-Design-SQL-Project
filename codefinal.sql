SELECT individuals.name, pickup_location, start_date, end_date, review_comment
FROM reviews
INNER JOIN car_sharing_users ON reviews.user_id = car_sharing_users.id
INNER JOIN individuals ON car_sharing_users.user_id = individuals.id;
SELECT name
FROM individuals
WHERE ID_expiration_date < CURDATE() OR driver_expiration_date < CURDATE();
SELECT license_plate
FROM cars
WHERE year < 2020;
