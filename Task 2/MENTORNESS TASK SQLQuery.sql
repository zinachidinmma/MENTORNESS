SELECT * FROM  [Hotel Reservation]

/*1*/
SELECT COUNT(*) AS total_reservations           
FROM [Hotel Reservation]

/*2*/
SELECT type_of_meal_plan, COUNT(*) as popularity
FROM [Hotel Reservation]
GROUP BY type_of_meal_plan
ORDER BY popularity DESC

/*3*/
SELECT AVG(avg_price_per_room) AS avg_price
FROM [Hotel Reservation]
WHERE no_of_children > 0

/*4*/
SELECT COUNT(*) AS reservations_2017
FROM [Hotel Reservation]
WHERE YEAR(arrival_date) =  2017

/*4ii*/
SELECT COUNT(*) AS reservations_2018
FROM [Hotel Reservation]
WHERE YEAR(arrival_date) =  2018

/*5*/
SELECT room_type_reserved, COUNT(*) as room_popularity
FROM [Hotel Reservation]
GROUP BY room_type_reserved
ORDER BY room_popularity DESC

/*6*/
SELECT COUNT(*) AS weekend_reservations
FROM [Hotel Reservation]
WHERE no_of_weekend_nights > 0

/*7*/
SELECT MAX(lead_time) AS highest_lead_time, MIN(lead_time) AS lowest_lead_time
FROM [Hotel Reservation]

/*8*/
SELECT market_segment_type, COUNT(*) as market_segment_popularity
FROM [Hotel Reservation]
GROUP BY market_segment_type
ORDER BY market_segment_popularity DESC

/*9*/
SELECT COUNT(*) AS confirmed_booking_status
FROM [Hotel Reservation]
WHERE booking_status = 'Not_Canceled';

/*10*/
SELECT SUM(no_of_adults) AS total_adults_, SUM(no_of_children) AS total_children
FROM [Hotel Reservation]

/*11*/
SELECT AVG(no_of_weekend_nights) AS avg_weekend_nights
FROM  [Hotel Reservation]
WHERE no_of_children > 0 


/*12*/
SELECT MONTH(arrival_date) AS month, COUNT(*) AS total_reservations
FROM [Hotel Reservation]
GROUP BY MONTH(arrival_date)
ORDER BY month;

/*13*/
SELECT room_type_reserved, AVG(no_of_weekend_nights + no_of_week_nights) AS avg_total_nights
FROM [Hotel Reservation]
GROUP BY room_type_reserved

/*14*/
SELECT avg_price_per_room, room_type_reserved AS children_room_type 
FROM [Hotel Reservation]
WHERE no_of_children > 0 
GROUP BY room_type_reserved, avg_price_per_room
ORDER BY children_room_type DESC;

/*15*/
SELECT market_segment_type, MAX(avg_price_per_room) AS highest_market_segment_type
FROM [Hotel Reservation]
GROUP BY market_segment_type
ORDER BY AVG(avg_price_per_room) DESC 



