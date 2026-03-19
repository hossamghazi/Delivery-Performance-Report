# 🚚 Delivery Operations Intelligence Dashboard

## 📌 Project Overview

This project analyzes delivery operations performance to uncover insights that improve efficiency, reduce delivery time, and enhance customer satisfaction.

The project combines data cleaning, analysis, and visualization to provide a complete end-to-end data solution.

---

## 🎯 Objectives

* Analyze delivery performance metrics
* Identify key factors affecting delivery time
* Evaluate delivery personnel efficiency
* Support data-driven decision making

---

## 🛠️ Tools & Technologies

* **Python (Pandas)** → Data Cleaning & Preprocessing
* **Microsoft Excel** → Initial Data Exploration
* **SQL** → Data Analysis & KPI Extraction
* **Power BI + DAX** → Dashboard Creation & Advanced Calculations

---

## 🗂️ Dataset Description

The dataset includes three main tables:

### 1️⃣ Person Table

* Delivery person ID
* Age
* Ratings

### 2️⃣ Orders Table

* Order ID
* Delivery time
* Weather conditions
* Traffic density
* Vehicle type
* City

### 3️⃣ Location Table

* Restaurant coordinates
* Delivery location coordinates

---

## 📊 Key KPIs

--1-What is the average delivery time?

--2-How many orders were delivered in each city?

--3-What is the average delivery time for each type of vehicle?

--4-What is the average rating of delivery persons by age group?

--5-How many orders did each delivery person complete?

--6-What is the average delivery time for each delivery person?

--7-How does traffic density affect delivery time in each city?

--8️-What is the average delivery time based on distance?

--9-Which delivery persons have the highest ratings and fastest delivery times?

--10-How do weather conditions and vehicle type together affect delivery time?

--11-Distance per order in kilometers?

--12-the relationship between distance and delivery time

---

## 📈 Dashboard Features

* Interactive filters (City, Weather, Traffic)
* Map visualization for delivery locations
* KPI cards with dynamic calculations using DAX
* Performance comparison between delivery personnel
* Trend analysis

---

## 🧹 Data Cleaning Process

Data cleaning was performed using **Pandas** and **Excel**, including:

* Handling missing values
* Removing duplicates
* Data type conversion
* Data standardization

---

## 🧠 Key Insights

* The average delivery time is **26 minutes**
* **Metropolitan areas** have the highest number of orders, while **semi-urban areas** have the lowest
* **Motorcycles** are the most commonly used delivery vehicle
* Delivery person rating **increases with age**
* Higher traffic density leads to **longer delivery times**
* Faster deliveries result in **higher customer ratings**
* Good weather conditions significantly **reduce delivery time**

---

## 📌 Recommendations

Based on the analysis and insights, the following actions are recommended to improve delivery performance:

* 🚦 **Optimize delivery routes in high-traffic areas**
  Since higher traffic significantly increases delivery time, route optimization and smart navigation should be implemented.

* 🏙️ **Focus on Metropolitan areas**
  As metropolitan cities generate the highest number of orders, allocating more delivery personnel there can improve efficiency.

* 🛵 **Increase motorcycle usage**
  Motorcycles are the fastest and most efficient vehicle, especially in congested areas, so expanding their usage is recommended.

* 👤 **Leverage experienced delivery personnel**
  Since ratings increase with age, assigning experienced drivers to critical or high-priority deliveries can enhance customer satisfaction.

* 🌦️ **Plan for weather conditions**
  Delivery time improves in good weather, so forecasting and adjusting delivery expectations during bad weather is essential.

* ⏱️ **Reduce delivery time to improve ratings**
  Faster deliveries directly lead to higher customer ratings, so focusing on speed optimization is key.

* 📊 **Implement performance monitoring dashboards**
  Continuous tracking of KPIs using dashboards (Power BI) helps in making real-time decisions.

* 📍 **Use distance-based assignment**
  Assign orders to the nearest delivery person to reduce delivery time and increase efficiency.


## 🌍 Advanced Analysis

* Distance was calculated using the **Haversine Formula** for accurate geographic measurement
* Relationships between distance, time, and performance were analyzed

---

## 📌 Conclusion

This project demonstrates how data analytics can optimize delivery operations by identifying inefficiencies and key performance drivers.

---

## 🔮 Future Improvements

* Predict delivery time using Machine Learning
* Optimize delivery routes
* Integrate real-time tracking data
