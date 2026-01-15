CREATE DATABASE uber_eda;

USE uber_eda;

CREATE TABLE uber_requests (
    request_id INT,
    pickup_point VARCHAR(20),
    driver_id INT,
    status VARCHAR(30),
    request_timestamp TIMESTAMP,
    drop_timestamp TIMESTAMP,
    request_hour INT,
    request_day VARCHAR(15),
    time_slot VARCHAR(15),
    demand INT,
    supply INT
);

SELECT 
    Status,
    COUNT(*) AS total_requests
FROM uber_requests
GROUP BY Status
ORDER BY total_requests DESC;



SELECT
    `Pickup point`,
    Status,
    COUNT(*) AS total_requests
FROM uber_requests
GROUP BY `Pickup point`, Status
ORDER BY `Pickup point`, total_requests DESC;


SELECT
    HOUR(`Request timestamp`) AS request_hour,
    COUNT(*) AS total_requests
FROM uber_requests
GROUP BY request_hour
ORDER BY request_hour;



SELECT
    HOUR(`Request timestamp`) AS request_hour,
    Status,
    COUNT(*) AS total_requests
FROM uber_requests
GROUP BY request_hour, Status
ORDER BY request_hour, total_requests DESC;




SELECT
    HOUR(`Request timestamp`) AS request_hour,
    Status,
    COUNT(*) AS total_requests
FROM uber_requests
WHERE `Pickup point` = 'Airport'
GROUP BY request_hour, Status
ORDER BY request_hour;


SHOW COLUMNS FROM uber_requests;

SELECT `Request timestamp` 
FROM uber_requests 
LIMIT 20;

DESCRIBE uber_requests;

SELECT `Request timestamp`, HOUR(`Request timestamp`) AS request_hour
FROM uber_requests
LIMIT 20;


UPDATE uber_requests
SET `Request timestamp` = STR_TO_DATE(`Request timestamp`, '%d/%m/%Y %H:%i:%s')
WHERE `Request timestamp` LIKE '%/%/%';



SET SQL_SAFE_UPDATES = 0;

UPDATE uber_requests
SET `Request timestamp` = STR_TO_DATE(`Request timestamp`, '%d/%m/%Y %H:%i:%s')
WHERE `Request timestamp` LIKE '%/%/%';


SET SQL_SAFE_UPDATES = 1;

SELECT
    -- Try first format, if NULL try second format
    HOUR(
        COALESCE(
            STR_TO_DATE(`Request timestamp`, '%d/%m/%Y %H:%i:%s'),
            STR_TO_DATE(`Request timestamp`, '%d-%m-%Y %H:%i:%s')
        )
    ) AS request_hour,
    Status,
    COUNT(*) AS total_requests
FROM uber_requests
WHERE `Request timestamp` IS NOT NULL
GROUP BY request_hour, Status
ORDER BY request_hour, total_requests DESC;



SELECT
    HOUR(`Request timestamp`) AS request_hour,
    Status,
    COUNT(*) AS total_requests
FROM uber_requests
WHERE `Pickup point` = 'Airport'
GROUP BY request_hour, Status
ORDER BY request_hour;


SELECT
    HOUR(`Request timestamp`) AS request_hour,
    Status,
    COUNT(*) AS total_requests
FROM uber_requests
GROUP BY request_hour, Status
ORDER BY request_hour, total_requests DESC;


SELECT
    HOUR(`Request timestamp`) AS request_hour,
    Status,
    COUNT(*) AS total_requests
FROM uber_requests
WHERE `Pickup point` = 'Airport'
GROUP BY request_hour, Status
ORDER BY request_hour;













