--- DMQ SQL File  

INSERT INTO `student` (`id`, `name`, `major`, `building`)
VALUES (`:sid`,`:sname`,`:smajor`,`sbuilding`);

INSERT INTO `professor` (`id`, `name`,`college`,`tenured`, `building`, `boss`)
VALUES (`:pid`, `:pname`,`:pcollege`,`:ptenured`, `:pbuilding`, `:pboss`);

INSERT INTO `class` (`course_id`, `course_name`, `college`, `professor`,`building_name`)
VALUES (`:ccourse_id`, `:ccourse_name`, `:ccollege`, `:cprofessor`,`:cbuilding_name`);

INSERT INTO `students_classes` (`student_id`,`class_id`)
VALUES (`:sid`,`:ccorse_id`);

INSERT INTO `buildings` (`name`,`rooms`)
VALUES (`:bnameInput`, `:brooms`);
