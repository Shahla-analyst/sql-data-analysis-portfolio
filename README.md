# 🏋️ Athlete Performance SQL Project

## 📊 Project Overview
This project analyzes athlete performance data using SQL.  
It focuses on extracting insights such as training time, calories burned, heart rate, and ranking athletes.

---

## 📁 Dataset
The dataset contains:
- Athlete names
- Workout type
- Duration (minutes)
- Calories burned
- Heart rate

---

## 🔍 SQL Analysis

### 1. Total Training Time per Athlete
Calculates total workout time for each athlete.

### 2. Average Calories Burned
Finds the average calories burned per athlete.

### 3. Maximum Heart Rate per Workout Type
Identifies peak heart rate for each workout category.

### 4. Top Athlete
Determines which athlete trained the most.

### 5. Ranking Athletes
Ranks athletes based on total training time using window functions.
## 💻 Example Query

```sql
SELECT athlete, SUM(duration_min) AS total_time
FROM dataset
GROUP BY athlete
ORDER BY total_time DESC;
```

## 📈 Key Insights

- Some athletes train significantly more than others, showing clear performance differences.
- Average calorie burn varies across athletes, indicating different workout intensity levels.
- Certain workout types lead to higher maximum heart rates, suggesting more intensive training.
- Ranking athletes reveals performance hierarchy based on total training time.

---

## 🧠 Business Interpretation

- Athletes with higher training time may have better endurance and consistency.
- High heart rate workouts can be used to design more effective training programs.
- Coaches can use this data to personalize training plans.

---

## 🛠️ Skills Used
- SQL Aggregations (SUM, AVG, MAX)
- GROUP BY
- ORDER BY
- LIMIT
- Window Functions (RANK)

---

## 🎯 Goal
Practice SQL for real-world data analysis and build a strong portfolio project.
