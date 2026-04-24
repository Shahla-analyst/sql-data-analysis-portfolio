-- Athlete Performance Analysis Project

-- 1. Total training time per athlete
SELECT athlete, SUM(duration_min) AS total_time
FROM workouts
GROUP BY athlete
ORDER BY total_time DESC;

-- 2. Average heart rate per athlete
SELECT athlete, AVG(heart_rate) AS avg_heart_rate
FROM workouts
GROUP BY athlete;

-- 3. Total calories burned per athlete
SELECT athlete, SUM(calories) AS total_calories
FROM workouts
GROUP BY athlete;

-- 4. Most intensive workout
SELECT athlete, workout_type, MAX(heart_rate) AS max_hr
FROM workouts
GROUP BY athlete, workout_type;
