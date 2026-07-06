CREATE TABLE `users` (
  `user_id` int PRIMARY KEY AUTO_INCREMENT,
  `full_name` varchar(255),
  `email` varchar(255) UNIQUE,
  `phone` varchar(255),
  `role` varchar(255),
  `status` varchar(255),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `students` (
  `student_id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int UNIQUE,
  `student_code` varchar(255) UNIQUE,
  `full_name` varchar(255),
  `gender` varchar(255),
  `date_of_birth` date,
  `school` varchar(255),
  `grade` varchar(255),
  `parent_name` varchar(255),
  `parent_phone` varchar(255),
  `address` text,
  `status` varchar(255),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `teachers` (
  `teacher_id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int UNIQUE,
  `full_name` varchar(255),
  `subject` varchar(255),
  `phone` varchar(255),
  `status` varchar(255),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `courses` (
  `course_id` int PRIMARY KEY AUTO_INCREMENT,
  `course_name` varchar(255),
  `description` text,
  `monthly_fee` decimal,
  `status` varchar(255),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `classes` (
  `class_id` int PRIMARY KEY AUTO_INCREMENT,
  `course_id` int,
  `teacher_id` int,
  `class_name` varchar(255),
  `grade` varchar(255),
  `day` varchar(255),
  `start_time` time,
  `end_time` time,
  `mode` varchar(255),
  `online_link` varchar(255),
  `status` varchar(255),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `enrollments` (
  `enrollment_id` int PRIMARY KEY AUTO_INCREMENT,
  `student_id` int,
  `class_id` int,
  `enrolled_date` date,
  `status` varchar(255)
);

CREATE TABLE `attendance` (
  `attendance_id` int PRIMARY KEY AUTO_INCREMENT,
  `student_id` int,
  `class_id` int,
  `date` date,
  `status` varchar(255),
  `remarks` text,
  `marked_by` int,
  `created_at` datetime
);

CREATE TABLE `exams` (
  `exam_id` int PRIMARY KEY AUTO_INCREMENT,
  `class_id` int,
  `exam_name` varchar(255),
  `exam_type` varchar(255),
  `exam_date` date,
  `total_marks` int,
  `created_at` datetime
);

CREATE TABLE `marks` (
  `mark_id` int PRIMARY KEY AUTO_INCREMENT,
  `exam_id` int,
  `student_id` int,
  `obtained_marks` decimal,
  `grade` varchar(255),
  `feedback` text,
  `created_at` datetime
);

CREATE TABLE `fees` (
  `fee_id` int PRIMARY KEY AUTO_INCREMENT,
  `student_id` int,
  `class_id` int,
  `month` varchar(255),
  `amount` decimal,
  `due_date` date,
  `status` varchar(255),
  `created_at` datetime
);

CREATE TABLE `payments` (
  `payment_id` int PRIMARY KEY AUTO_INCREMENT,
  `fee_id` int,
  `student_id` int,
  `amount` decimal,
  `payment_method` varchar(255),
  `paid_date` date,
  `reference_number` varchar(255),
  `received_by` int
);

CREATE TABLE `materials` (
  `material_id` int PRIMARY KEY AUTO_INCREMENT,
  `class_id` int,
  `title` varchar(255),
  `description` text,
  `file_url` varchar(255),
  `uploaded_by` int,
  `upload_date` datetime,
  `status` varchar(255)
);

CREATE TABLE `announcements` (
  `announcement_id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255),
  `message` text,
  `audience` varchar(255),
  `class_id` int,
  `created_by` int,
  `publish_date` datetime,
  `expiry_date` datetime,
  `status` varchar(255)
);

CREATE TABLE `gallery` (
  `image_id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255),
  `description` text,
  `image_url` varchar(255),
  `uploaded_by` int,
  `upload_date` datetime,
  `status` varchar(255)
);

ALTER TABLE `students` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `teachers` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `classes` ADD FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

ALTER TABLE `classes` ADD FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`);

ALTER TABLE `enrollments` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

ALTER TABLE `enrollments` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

ALTER TABLE `attendance` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

ALTER TABLE `attendance` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

ALTER TABLE `attendance` ADD FOREIGN KEY (`marked_by`) REFERENCES `users` (`user_id`);

ALTER TABLE `exams` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

ALTER TABLE `marks` ADD FOREIGN KEY (`exam_id`) REFERENCES `exams` (`exam_id`);

ALTER TABLE `marks` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

ALTER TABLE `fees` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

ALTER TABLE `fees` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

ALTER TABLE `payments` ADD FOREIGN KEY (`fee_id`) REFERENCES `fees` (`fee_id`);

ALTER TABLE `payments` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

ALTER TABLE `payments` ADD FOREIGN KEY (`received_by`) REFERENCES `users` (`user_id`);

ALTER TABLE `materials` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

ALTER TABLE `materials` ADD FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`user_id`);

ALTER TABLE `announcements` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

ALTER TABLE `announcements` ADD FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`);

ALTER TABLE `gallery` ADD FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`user_id`);
