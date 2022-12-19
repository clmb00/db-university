<<<<<<< HEAD
-- 1
SELECT * 
FROM `students`
WHERE YEAR(`date_of_birth`) = 1990;

-- 2
SELECT *
FROM `courses`
WHERE `cfu` > 10;

-- 3
SELECT *
FROM `students`
WHERE YEAR(CURRENT_DATE()) - YEAR(`date_of_birth`) > 30
ORDER BY `date_of_birth`;

-- 4
SELECT *
FROM `courses`
WHERE `period` = 'I semestre'
AND `year` = 1;

-- 5
SELECT *
FROM `exams`
WHERE `date` = '2020-06-20'
AND `hour` >= '14:00:00';

-- 6
SELECT *
FROM `degrees`
WHERE `level` = 'magistrale';

-- 7
SELECT COUNT(*) AS `number_of_departments`
FROM `departments`;

-- 8
SELECT COUNT(*) AS `teachers_without_phone`
FROM `teachers`
=======
-- 1
SELECT * 
FROM `students`
WHERE YEAR(`date_of_birth`) = 1990;

-- 2
SELECT *
FROM `courses`
WHERE `cfu` > 10;

-- 3
SELECT *
FROM `students`
WHERE YEAR(CURRENT_DATE()) - YEAR(`date_of_birth`) > 30
ORDER BY `date_of_birth`;

-- 4
SELECT *
FROM `courses`
WHERE `period` = 'I semestre'
AND `year` = 1;

-- 5
SELECT *
FROM `exams`
WHERE `date` = '2020-06-20'
AND `hour` >= '14:00:00';

-- 6
SELECT *
FROM `degrees`
WHERE `level` = 'magistrale';

-- 7
SELECT COUNT(*) AS `number_of_departments`
FROM `departments`;

-- 8
SELECT COUNT(*) AS `teachers_without_phone`
FROM `teachers`
>>>>>>> 1fcfbd123d3b213b95eee66d01712f45cedd58c0
WHERE `phone` IS NULL;