-- 1
SELECT COUNT(*) AS 'number_of_iscritions', YEAR(`enrolment_date`) AS 'year'
FROM `students`
GROUP BY `year`;

-- 2
SELECT COUNT(*) AS `number_of_teachers`, `office_address`
FROM `teachers`
GROUP BY `office_address`
ORDER BY `number_of_teachers` DESC;

-- 3
SELECT AVG(`vote`), `exam_id`
FROM `exam_student`
GROUP BY `exam_id`;

-- 4
SELECT COUNT(*), `departments`.`name`
FROM `degrees`
JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
GROUP BY `degrees`.`department_id`;
