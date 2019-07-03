-- student table
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
   `id` varchar(8) NOT NULL,
   `name` varchar(16) NOT NULL,
   `age` varchar(4) NOT NULL,
   `sex` varchar(8) NOT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `student` VALUES ('001', '张三', '18', '男');
INSERT INTO `student` VALUES ('002', '李四', '20', '女');


-- subject table
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `subject` varchar(12) NOT NULL,
   `teacher` varchar(12) NOT NULL,
   `description` varchar(16) NOT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

INSERT INTO `subject` VALUES ('1001', '语文', '王老师', '本次考试比较简单');
INSERT INTO `subject` VALUES ('1002', '数学', '刘老师', '本次考试比较难');


-- score table
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(8) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `score` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `score` VALUES ('1', '001', '1001', '80');
INSERT INTO `score` VALUES ('2', '002', '1002', '60');
INSERT INTO `score` VALUES ('3', '001', '1001', '70');
INSERT INTO `score` VALUES ('4', '002', '1002', '60.5');