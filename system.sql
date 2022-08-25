/*
Navicat MySQL Data Transfer

Source Server         : mysqlConnection
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : system

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2022-08-25 11:06:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Adminname` varchar(20) DEFAULT NULL,
  `Adminpwd` varchar(32) DEFAULT NULL,
  `Adminlevel` int(1) DEFAULT NULL,
  KEY `level_fk` (`Adminlevel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin', '1');
INSERT INTO `admin` VALUES ('mali', 'mali', '2');

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `Department_id` int(4) NOT NULL AUTO_INCREMENT,
  `Department_name` varchar(30) DEFAULT NULL,
  `Location_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('10', '业务部', '8楼');
INSERT INTO `departments` VALUES ('20', '开发部', '9楼');
INSERT INTO `departments` VALUES ('30', '实施部', '10楼');
INSERT INTO `departments` VALUES ('40', '人事部', '11楼');
INSERT INTO `departments` VALUES ('50', '项目部', '12楼');
INSERT INTO `departments` VALUES ('60', '总部', '13楼');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `Employee_id` int(6) NOT NULL AUTO_INCREMENT,
  `Emp_name` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone_number` varchar(20) DEFAULT NULL,
  `Hire_date` date DEFAULT NULL,
  `Job_id` int(10) DEFAULT NULL,
  `Salary` int(6) DEFAULT NULL,
  `Department_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`Employee_id`),
  KEY `job_id_fk` (`Job_id`),
  KEY `deptid_fk` (`Department_id`),
  CONSTRAINT `deptid_fk` FOREIGN KEY (`Department_id`) REFERENCES `departments` (`Department_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `job_id_fk` FOREIGN KEY (`Job_id`) REFERENCES `jobs` (`Job_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES ('1', '小王', '12345678@123', '1234567890', '2022-03-31', '1', '5000', '10');
INSERT INTO `employees` VALUES ('2', '张三', '12345678@123', '1234567890', '2022-03-31', '2', '5000', '50');
INSERT INTO `employees` VALUES ('3', '韩林', '12345678@qq.com', '123456789', '1998-09-09', '2', '8000', '20');
INSERT INTO `employees` VALUES ('5', '李四', '123456789@qq.com', '123456789', '2003-05-07', '3', '7000', '20');
INSERT INTO `employees` VALUES ('6', '王龙', '123456789@qq.com', '12345678', '2001-09-09', '3', '6000', '50');
INSERT INTO `employees` VALUES ('10', 'bgyuijnbh', 'qwertyuiop@qq.com', '1234567890', '2022-05-12', '3', '3000', '20');
INSERT INTO `employees` VALUES ('11', 'ghj', '1234567890', '1234567890', '2022-05-11', '3', '6000', '10');
INSERT INTO `employees` VALUES ('12', 'liubei', '1234567890', '1234567890', '2022-05-12', '3', '1234', '10');
INSERT INTO `employees` VALUES ('13', 'AAA', 'qwertyuiop', '1234567890', '2022-05-11', '2', '8000', '10');
INSERT INTO `employees` VALUES ('14', 'BBB', 'qwertyuiop', '1234567890', '2022-05-12', '2', '8000', '20');
INSERT INTO `employees` VALUES ('16', 'JJJ', 'JJJ', '12345678', '2022-05-11', '2', '8000', '20');
INSERT INTO `employees` VALUES ('17', 'ssdddf', 'weferf', '12334556', '2022-08-03', '2', '8000', '20');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `Job_id` int(10) NOT NULL AUTO_INCREMENT,
  `Job_title` varchar(35) DEFAULT NULL,
  `Min_salary` int(6) DEFAULT NULL,
  `Max_salary` int(6) DEFAULT NULL,
  PRIMARY KEY (`Job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES ('1', '文员', '4000', '7000');
INSERT INTO `jobs` VALUES ('2', 'java开发', '6000', '10000');
INSERT INTO `jobs` VALUES ('3', '实施工程师', '5000', '8000');
INSERT INTO `jobs` VALUES ('5', 'web工程师', '7000', '12000');
INSERT INTO `jobs` VALUES ('6', '测试工程师', '6000', '8000');
INSERT INTO `jobs` VALUES ('7', '董事', '8000', '20000');
INSERT INTO `jobs` VALUES ('8', '项目经理', '7000', '13000');
