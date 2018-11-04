CREATE DATABASE IF NOT EXISTS shopo2odb default charset utf8 COLLATE utf8_general_ci 

create table `tb_area`(
	`area_id` int(2) NOT NULL AUTO_INCREMENT,
	`area_name` VARCHAR(200) NOT NULL ,
	`prority` int(2) NOT NULL DEFAULT '0',
	`create_time` datetime DEFAULT NULL ,
	`last_edit_time` datetime DEFAULT NULL,
	primary key(`area_id`),
	unique key `UK_AREA`(`area_name`)
 )ENGINE = InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
 
 create  table `tb_person_info`(
 	`user_id` int(10) NOT NULL AUTO_INCREMENT,
 	`name` varchar(32)  DEFAULT NULL , 
 	`profile_img` varchar(1024) DEFAULT NULL ,
 	`email` varchar(1024) DEFAULT NULL ,
 	`gender` varchar(2) DEFAULT NULL,
 	`enable_status` int(2) NOT NULL DEFAULT '0' COMMENT '0 禁止使用本商城 1 允许使用本商城',
 	`user_type` int(2) NOT NULL DEFAULT '1' COMMENT '1 顾客 2 店家  3 超级管理员',
 	`create_time` datetime DEFAULT NULL , 
 	`last_edit_time` datetime DEFAULT NULL,
 	primary key(`user_id`)
 )ENGINE = InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
 
 create table `tb_head_line`(
 	`line_id` int(100) NOT NULL AUTO_INCREMENT,
 	`line_name` varchar(1000) DEFAULT NULL ,
 	`line_link` varchar(2000) NOT NULL ,
 	`line_img` varchar(2000) NOT NULL ,
 	`priority` int(2) DEFAULT NULL ,
 	`enable_status` int(2) NOT NULL DEFAULT '0',
 	`create_time` datetime DEFAULT NULL , 
 	`last_edit_time` datetime DEFAULT NULL,
 	primary key(`line_id`)
 )ENGINE = InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
 
 
 create table `tb_wechat_auth`(
 	`wechat_auth_id` int(10) NOT NULL AUTO_INCREMENT ,
 	`user_id` int(10) NOT NULL , 
 	`open_id` varchar(1024) NOT NULL ,
 	`create_time` datetime DEFAULT NULL ,
 	primary key(`wechat_auth_id`),
 	constraint `fk_wechatauth_profile` foreign key(`user_id`) references `tb_person_info`(`user_id`)
 )ENGINE = InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
 
 alert table tb_wechat_auth add unique index(open_id)
 
  create table `tb_local_auth`(
 	`local_auth_id` int(10) NOT NULL AUTO_INCREMENT ,
 	`user_id` int(10) NOT NULL , 
 	`username` varchar(128) NOT NULL ,
 	`password` varchar(128) NOT NULL ,
 	`create_time` datetime DEFAULT NULL ,
 	primary key(`local_auth_id`),
 	unique key `UK_LOCAL_PROFILE`(`username`),
 	constraint `fk_localauth_profile` foreign key(`user_id`) references `tb_person_info`(`user_id`)
 )ENGINE = InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
 
  create table `tb_shop_category`(
 	`shop_category_id` int(11) NOT NULL AUTO_INCREMENT,
 	`shop_category_name` varchar(1000) NOT NULL DEFAULT '' ,
 	`shop_category_desc` varchar(1000) DEFAULT '' ,
 	`shop_category_img` varchar(2000) DEFAULT NULL,
 	`parent_id` int(11) DEFAULT NULL ,
 	`priority` int(2) DEFAULT NULL ,
 	`create_time` datetime DEFAULT NULL , 
 	`last_edit_time` datetime DEFAULT NULL,
 	primary key(`shop_category_id`),
 	CONSTRAINT `fk_shop_category_self` FOREIGN KEY (`parent_id`) REFERENCES `tb_shop_category`(`shop_category_id`)
 )ENGINE = InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;