CREATE USER 'wang'@'%' IDENTIFIED BY '123456'; 
GRANT All privileges ON *.* TO 'wang'@'%';

CREATE DATABASE `houtaisql` CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';

use houtaisql;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;