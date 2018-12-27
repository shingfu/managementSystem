
USE `4smanagersystem`;//数据库名

/*Table structure for table `role_menu` */

DROP TABLE IF EXISTS `role_menu`;

//角色——菜单表
CREATE TABLE `role_menu` (
  `roleid` int(10) DEFAULT NULL,
  `menuid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role_menu` */

insert  into `role_menu`(`roleid`,`menuid`) values (1,1),(2,13),(2,13),(3,16),(3,16),(4,17),(4,18),(4,19),(4,20),(4,21),(6,7),(6,7),(6,7),(6,7),(6,7),(6,7),(7,11),(7,11),(7,11),(7,11),(8,12),(NULL,NULL);

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

//菜单表
CREATE TABLE `sys_menu` (
  `menuid` int(10) NOT NULL,
  `prientid` int(10) DEFAULT NULL,
  `seq` int(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `linkurl` varchar(30) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menuid`,`prientid`,`seq`,`name`,`linkurl`,`status`) values (1,NULL,100,'用户管理',NULL,1),(2,NULL,200,'客户信息管理',NULL,1),(3,NULL,300,'会员管理',NULL,1),(4,NULL,400,'回访跟进管理',NULL,1),(5,NULL,500,'投诉管理\r\n',NULL,1),(6,NULL,600,'短信/邮件提醒管理',NULL,1),(7,NULL,700,'活动管理\r\n',NULL,1),(8,NULL,800,'客户分配\r\n',NULL,1),(9,NULL,900,'投诉回访分配\r\n',NULL,1),(10,NULL,1000,'客户部工作数据查询\r\n',NULL,1),(11,NULL,1100,'基盘客户分析管理\r\n',NULL,1),(12,NULL,1200,'车辆库存管理\r\n',NULL,1),(13,NULL,1300,'潜在客户管理\r\n',NULL,1),(14,NULL,1400,'车辆销售管理\r\n',NULL,1),(15,NULL,1500,'销售管理',NULL,1),(16,NULL,1600,'客户管理\r\n',NULL,1),(17,NULL,1700,'请购单管理\r\n',NULL,1),(18,NULL,1800,'报价单管理\r\n',NULL,1),(19,NULL,1900,'采购订单管理\r\n',NULL,1),(20,NULL,2000,'退货管理\r\n\r\n',NULL,1),(21,NULL,2100,'审批请购单',NULL,1),(22,1,101,'客户基本资料维护、车辆资本资料维护\r\n',NULL,1),(23,2,201,'会员卡申请\r\n',NULL,1),(24,2,201,'会员卡审核\r\n',NULL,1),(25,2,203,'会员卡发放\r\n',NULL,1),(26,2,204,'会员卡升级\r\n',NULL,1),(27,2,205,'会员卡资料查询\r\n',NULL,1),(28,3,301,'销售回访跟进\r\n',NULL,1),(29,3,302,'会员回访跟进\r\n',NULL,1),(30,3,303,'投诉回访跟进\r\n',NULL,1),(31,4,401,'投诉单录入\r\n',NULL,1),(32,4,402,'投诉单处理\r\n',NULL,1),(33,4,403,'投诉明细查询\r\n',NULL,1),(34,5,501,'生日/节日提醒\r\n',NULL,1),(35,5,502,'自定义短信提醒\r\n',NULL,1),(36,5,503,'提醒历史查询\r\n',NULL,1),(37,6,601,'活动计划\r\n',NULL,1),(38,6,602,'活动邀请\r\n',NULL,1),(39,6,603,'活动评估\r\n',NULL,1),(40,12,1201,'采购入库\r\n',NULL,1),(41,12,1202,'退货入库\r\n',NULL,1),(42,12,1203,'销售入库\r\n',NULL,1),(43,12,1204,'库存查询\r\n',NULL,1),(44,12,1205,'综合查询\r\n',NULL,1),(45,13,1301,'客户档案管理\r\n',NULL,1),(46,13,1302,'客户跟进管理\r\n',NULL,1),(47,14,1401,'订单管理\r\n',NULL,1),(48,14,1402,'出库申请\r\n',NULL,1),(49,14,1403,'交车出库\r\n',NULL,1),(50,15,1501,'客户分配\r\n',NULL,1),(51,15,1502,'潜在客户查询\r\n',NULL,1),(52,16,1601,'订单审核\r\n',NULL,1),(53,16,1602,'销售数据查询\r\n',NULL,1);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;
//角色表
CREATE TABLE `sys_role` (
  `roleid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `desc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`roleid`,`name`,`desc`) values (1,'管理员','系统管理'),(2,'销售经理','销售部总经理'),(3,'销售主管','销售部主管'),(4,'采购经理','采购部经理'),(5,'采购主管','采购部主管'),(6,'客户经理','客户部经理'),(7,'客户主管','客户部主管'),(8,'仓库管理员','仓管');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

//用户表
CREATE TABLE `sys_user` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`userid`,`username`,`password`,`state`) values (1,'admain','123456',1),(2,'yy','111111',1),(3,'zys','111111',1),(4,'lgb','111111',1),(5,'hq','111111',1),(6,'ldl','111111',1),(7,'ssw','111111',1),(8,'zz','111111',1);

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

//用户角色表
CREATE TABLE `user_role` (
  `userid` int(10) NOT NULL,
  `roleid` int(10) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`userid`,`roleid`) values (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
