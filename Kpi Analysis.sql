--1-What is the average delivery time?
select avg(time_taken_min) as 'avg delivery time'
from orders
--[26 Min]

--2-How many orders were delivered in each city?
select city,count(*) as 'total_orders'
from orders
group by city
order by count(*) desc

--3-What is the average delivery time for each type of vehicle?
select type_of_vehicle,avg(time_taken_min) as avg_time
from orders
group by type_of_vehicle

--4-What is the average rating of delivery persons by age group?
select delivery_person_age,avg(delivery_person_ratings) as avg_rate
from person
group by delivery_person_age
order by delivery_person_age

--5-How many orders did each delivery person complete?
select delivery_person_id,count(*) as total_orders
from person p 
join orders o on p.id = o.id
group by delivery_person_id
order by count(*) desc

--6-What is the average delivery time for each delivery person?
select delivery_person_id,avg(time_taken_min) as avg_time
from person p
join orders o
on p.id = o.id
group by delivery_person_id

--7-How does traffic density affect delivery time in each city?
select city,road_traffic_density,avg(time_taken_min) as avg_time
from orders
group by city,road_traffic_density

--8️-What is the average delivery time based on distance?
SELECT 
    AVG(time_taken_min) AS avg_time,
    round(AVG(ABS(restaurant_latitude - delivery_location_latitude) +
        ABS(restaurant_longitude - delivery_location_longitude)),2) AS avg_distance
FROM orders o
JOIN location l ON o.id = l.id;


--9-Which delivery persons have the highest ratings and fastest delivery times?
select delivery_person_id,delivery_person_ratings,
avg(time_taken_min) as avg_time
from person p  
join orders o
on p.id = o.id
group by delivery_person_id,delivery_person_ratings
order by delivery_person_ratings desc, avg(time_taken_min)

--10-How do weather conditions and vehicle type together affect delivery time?
select weatherconditions,type_of_vehicle,avg(time_taken_min) as avg_time
from orders
group by weatherconditions,type_of_vehicle
order by avg(time_taken_min)

--11-Distance per order in kilometers?
   --use Haversine formula
SELECT 
    o.id AS order_id,
    
    6371 * ACOS(
        COS(RADIANS(l.restaurant_latitude)) *
        COS(RADIANS(l.Delivery_location_latitude)) *
        COS(RADIANS(l.delivery_location_longitude) - RADIANS(l.restaurant_longitude)) +
        SIN(RADIANS(l.restaurant_latitude)) *
        SIN(RADIANS(l.delivery_location_latitude))
    ) AS distance_km

FROM orders o
JOIN location l 
ON o.id = l.id

--12-the relationship between distance and delivery time
SELECT avg(o.time_taken_min)as avg_time,
    AVG(
        6371 * ACOS(
            COS(RADIANS(l.restaurant_latitude)) *
            COS(RADIANS(l.delivery_location_latitude)) *
            COS(RADIANS(l.delivery_location_longitude) - RADIANS(l.restaurant_longitude)) +
            SIN(RADIANS(l.restaurant_latitude)) *
            SIN(RADIANS(l.delivery_location_latitude))
        )
    ) AS avg_distance_km
FROM orders o
JOIN location l 
ON o.id = l.id
