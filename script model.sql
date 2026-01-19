SELECT id, name, ID_number, ID_expiration_date, driver_license, driver_expiration_date
FROM individuals;
SELECT name, license_plate
FROM individuals
INNER JOIN cars ON individuals.id = cars.owner_id;
SELECT individuals.name
FROM individuals
INNER JOIN car_sharing_users ON individuals.id = car_sharing_users.user_id
WHERE car_sharing_users.active = 1;
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

