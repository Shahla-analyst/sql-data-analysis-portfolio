-- Athlete Performance Analysis Project

-- 1. Total training time per athlete
SELECT athlete, SUM(duration_min) AS total_time
FROM dataset
GROUP BY athlete;

-- 2. Average calories burned per athlete
SELECT athlete, AVG(calories) AS avg_calories
FROM dataset
GROUP BY athlete;

-- 3. Max heart rate per workout type
SELECT workout_type, MAX(heart_rate) AS max_hr
FROM dataset
GROUP BY workout_type;

-- 4. Who trained the most?
SELECT athlete, SUM(duration_min) AS total_time
FROM dataset
GROUP BY athlete
ORDER BY SUM(duration_min) DESC
LIMIT 1;
-- 5. Ranking athletes by total training time
SELECT athlete, SUM(duration_min) AS total_time,
       RANK() OVER (ORDER BY SUM(duration_min) DESC) AS rank_position
FROM dataset
GROUP BY athlete;
