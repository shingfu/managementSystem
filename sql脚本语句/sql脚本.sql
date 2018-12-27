
USE `4smanagersystem`;//数据库名

/*Table structure for table `role_menu` */

DROP TABLE IF EXISTS `role_menu`;

//角色——菜单表
CREATE TABLE `role_menu` (
  `roleid` int(10) DEFAULT NULL,
  `menuid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role_menu` */

INSERT  INTO `role_menu`(`roleid`,`menuid`) VALUES (1,1),(1,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(4,17),(4,18),(4,19),(4,20),(4,21),(4,22),(5,23),(5,24),(5,25),(5,26),(5,27),(5,28),(5,29),(5,30),(5,31),(5,32),(5,33),(5,34),(5,35),(5,36),(5,37),(5,38),(5,39),(5,40),(5,41),(5,43),(5,43),(5,44),(5,45),(5,46),(5,47),(6,48),(6,49),(6,51),(6,52),(6,53),(7,54),(7,55),(7,56),(7,57),(7,58),(7,59),(7,60),(7,61),(7,62),(7,63),(7,64),(7,65),(7,66),(8,67),(8,68);

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

//菜单表
CREATE TABLE `sys_menu` (
  `menuid` int(10) NOT NULL AUTO_INCREMENT,
  `parentid` int(10) DEFAULT NULL,
  `seq` int(12) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `linkurl` varchar(30) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menuid`,`parentid`,`seq`,`name`,`linkurl`,`status`) values (1,NULL,100,'用户管理\r\n',NULL,1),(2,1,101,'用户操作\r\n',NULL,1),(3,NULL,200,'仓库管理\r\n',NULL,1),(4,3,201,'采购入库\r\n',NULL,1),(5,3,202,'采购退货\r\n',NULL,1),(6,3,203,'销售出库\r\n',NULL,1),(7,3,204,'退货入库\r\n',NULL,1),(8,3,205,'合格证出入库\r\n',NULL,1),(9,3,206,'查询报表\r\n',NULL,1),(10,NULL,300,'潜在客户管理\r\n',NULL,1),(11,10,301,'客户档案管理\r\n',NULL,1),(12,10,302,'客户跟进管理\r\n',NULL,1),(13,NULL,400,'车辆销售管理\r\n',NULL,1),(14,13,401,'订单管理\r\n',NULL,1),(15,13,402,'出库申请\r\n',NULL,1),(16,13,403,'交车出库\r\n',NULL,1),(17,NULL,500,'客户管理\r\n',NULL,1),(18,17,501,'客户分配\r\n',NULL,1),(19,17,502,'潜在客户查询\r\n',NULL,1),(20,NULL,600,'销售管理\r\n',NULL,1),(21,20,601,'订单审核\r\n',NULL,1),(22,20,602,'销售数据查询\r\n',NULL,1),(23,NULL,700,'客户基本信息管理\r\n',NULL,1),(24,23,701,'客户基本资料维护\r\n',NULL,1),(25,23,702,'车辆基本资料维护\r\n',NULL,1),(26,NULL,800,'会员管理\r\n',NULL,1),(27,26,801,'会员卡申请\r\n',NULL,1),(28,26,802,'会员卡审核\r\n',NULL,1),(29,26,803,'会员卡发放\r\n',NULL,1),(30,26,804,'会员卡升级\r\n',NULL,1),(31,26,805,'会员卡资料查询\r\n',NULL,1),(32,NULL,900,'回访跟进管理\r\n',NULL,1),(33,32,901,'销售回访跟进\r\n',NULL,1),(34,32,902,'会员回访跟进\r\n',NULL,1),(35,32,903,'投诉回访跟进\r\n',NULL,1),(36,NULL,1000,'投诉管理\r\n',NULL,1),(37,36,1001,'投诉单录入\r\n',NULL,1),(38,36,1002,'投诉单处理\r\n',NULL,1),(39,36,1003,'投诉明细查询\r\n',NULL,1),(40,NULL,1100,'短信/邮件提醒管理\r\n',NULL,1),(41,40,1101,'生日/节日提醒\r\n',NULL,1),(42,40,1102,'自定义短信提醒\r\n',NULL,1),(43,40,1103,'提醒历史查询\r\n',NULL,1),(44,NULL,1200,'活动管理\r\n',NULL,1),(45,44,1201,'活动计划\r\n',NULL,1),(46,44,1202,'活动邀请\r\n',NULL,1),(47,44,1203,'活动评估\r\n',NULL,1),(48,NULL,1300,'客户管理\r\n',NULL,1),(49,48,1301,'客户分配\r\n',NULL,1),(50,NULL,1400,'投诉回访管理\r\n',NULL,1),(51,50,1401,'投诉回访分配\r\n',NULL,1),(52,NULL,1500,'工作数据管理\r\n',NULL,1),(53,52,1501,'工作数据查询\r\n',NULL,1),(54,NULL,1600,'请购单管理\r\n',NULL,1),(55,54,1601,'查询采购需求\r\n',NULL,1),(56,54,1602,'查询库存预警\r\n',NULL,1),(57,54,1603,'新建请购单\r\n',NULL,1),(58,NULL,1700,'报价单管理\r\n',NULL,1),(59,58,1701,'询价单操作\r\n',NULL,1),(60,58,1702,'报价单操作\r\n',NULL,1),(61,NULL,1800,'采购订单管理\r\n',NULL,1),(62,61,1801,'新建采购单\r\n',NULL,1),(63,61,1802,'更改订单状态\r\n',NULL,1),(64,61,1803,'订单入库申请\r\n',NULL,1),(65,NULL,1900,'退货管理\r\n',NULL,1),(66,65,1901,'申请退货\r\n',NULL,1),(67,NULL,2000,'请购单管理\r\n',NULL,1),(68,67,2001,'审批请购单\r\n',NULL,1);

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

insert  into `sys_role`(`roleid`,`name`,`desc`) values (1,'管理员',''),(2,'仓库管理员\r\n',''),(3,'销售经理\r\n',''),(4,'销售主管\r\n',''),(5,'客户经理\r\n',''),(6,'客户主管',''),(7,'采购经理\r\n',''),(8,'采购主管','');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

//用户表
CREATE TABLE `sys_user` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`userid`,`username`,`password`,`state`,`name`) values (1,'admin','111111',1,'王大宝'),(2,'yy','222222',1,'烟雨'),(3,'zys','222222',1,'张一山'),(4,'lgb','111111',1,'老干部'),(5,'hq','111111',1,'花前'),(6,'ldl','111111',1,'炼丹炉'),(7,'ssw','111111',1,'杀生丸'),(8,'zz','111111',1,'作者');

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
