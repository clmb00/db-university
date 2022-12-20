-- 1
SELECT `students`.`name`, `students`.`surname`, `students`.`registration_number`
FROM `degrees`
JOIN `students` ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';

-- 2
SELECT `degrees`.`id`, `degrees`.`name`
FROM `degrees`
JOIN `departments` ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'
AND `degrees`.`level` = 'magistrale';

-- 3
SELECT `courses`.`id`, `courses`.`name`, `courses`.`description`, `courses`.`cfu`
FROM `courses`
JOIN `course_teacher` ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id`
WHERE `teachers`.`id` = 44;

-- 4
SELECT `students`.`id`, `students`.`surname`, `students`.`name`, `degrees`.`name` AS `degree`, `departments`.`name` AS `deparment`
FROM `students`
JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`surname`, `students`.`name`;

-- 5
SELECT `degrees`.`name` AS `degree`, `courses`.`name` AS `course`, `courses`.`cfu`, `courses`.`year`, `teachers`.`id` AS `teacher_id`, `teachers`.`name` AS `teacher_name`, `teachers`.`surname` AS `teacher_surname`
FROM `degrees`
JOIN `courses` ON `courses`.`degree_id` = `degrees`.`id`
JOIN `course_teacher` ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id`
ORDER BY `degrees`.`name`;

-- 6
SELECT DISTINCT `teachers`.*
FROM `departments`
JOIN `degrees` ON `degrees`.`department_id` = `departments`.`id`
JOIN `courses` ON `courses`.`degree_id` = `degrees`.`id`
JOIN `course_teacher` ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers` ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `departments`.`name` = 'Dipartimento di Matematica';

-- 7
SELECT `students`.`surname`, `students`.`name`, `exams`.`course_id`, `courses`.`name`, `courses`.`cfu`, `courses`.`year`, COUNT(*) AS `tentativi`, MAX(`exam_student`.`vote`) AS `voto_massimo`
FROM `students`
JOIN `exam_student` ON `exam_student`.`student_id` = `students`.`id`
JOIN `exams` ON `exams`.`id` = `exam_student`.`exam_id`
JOIN `courses` ON `courses`.`id` = `exams`.`course_id`
GROUP BY `courses`.`id`, `students`.`id`
-- having quando voglio mettere una condizione sul group by
HAVING `voto_massimo` >= 18
ORDER BY `students`.`id`;