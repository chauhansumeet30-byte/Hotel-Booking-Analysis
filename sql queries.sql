1. SELECT hotel, COUNT(*) AS bookings
FROM hotel_cleaned
GROUP BY hotel
ORDER BY bookings DESC;


2.SELECT
    SUM(is_canceled) * 100.0 / COUNT(*) AS cancelation_rate
FROM hotel_cleaned;


3.SELECT arrival_date_month AS month,
       COUNT(*) AS bookings
FROM hotel_cleaned
GROUP BY month
ORDER BY bookings DESC;


4.SELECT country, COUNT(*) AS bookings
FROM hotel_cleaned
GROUP BY country
ORDER BY bookings DESC;


5.SELECT hotel, AVG(adr) AS average_daily_rate
FROM hotel_cleaned
GROUP BY hotel
ORDER BY average_daily_rate DESC;


6.SELECT hotel,
       SUM(is_canceled) * 100 / COUNT(*) AS cancellation_rate
FROM hotel_cleaned
GROUP BY hotel
ORDER BY cancellation_rate DESC;


7.SELECT market_segment,
       COUNT(*) AS bookings
FROM hotel_cleaned
GROUP BY market_segment
ORDER BY bookings DESC;


8.SELECT market_segment,
       SUM(is_canceled) * 100 / COUNT(*) AS bookings
FROM hotel_cleaned
GROUP BY market_segment
ORDER BY bookings DESC;


9.SELECT customer_type, COUNT(*) AS bookings
FROM hotel_cleaned
GROUP BY customer_type
ORDER BY bookings DESC;


10.SELECT assigned_room_type,
       AVG(adr) AS adr
FROM hotel_cleaned
GROUP BY assigned_room_type
ORDER BY adr DESC;


11.SELECT distribution_channel, COUNT(*) AS bookings
FROM hotel_cleaned
GROUP BY distribution_channel
ORDER BY bookings DESC;


12.SELECT distribution_channel,
       SUM(is_canceled) * 100 / COUNT(*) AS cancellation_rate
FROM hotel_cleaned
GROUP BY distribution_channel
ORDER BY cancellation_rate DESC;


13.SELECT meal, COUNT(*) AS bookings
FROM hotel_cleaned
GROUP BY meal
ORDER BY COUNT(*) DESC;


14.SELECT meal,
       SUM(is_canceled) * 100 / COUNT(*) AS cancellation_rate
FROM hotel_cleaned
GROUP BY meal
ORDER BY cancellation_rate DESC;


15.SELECT hotel,
       AVG(lead_time) AS avg_lead_time
FROM hotel_cleaned
GROUP BY hotel
ORDER BY avg_lead_time DESC;