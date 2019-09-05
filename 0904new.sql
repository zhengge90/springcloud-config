
CREATE TABLE `Public_ConfirmBuySet` (
  `_track_id` bigint(50) NOT NULL,
  `event` varchar(100) DEFAULT NULL COMMENT '事件英文名称',
  `event_name` varchar(100) DEFAULT NULL COMMENT '时间中文名称',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '神策生成的用户ID，登录后是uid',
  `type` varchar(20) DEFAULT NULL COMMENT '埋点方式',
  `user_id` varchar(100) DEFAULT NULL COMMENT '神策id',
  `date` date DEFAULT NULL COMMENT '时间：年-月-日',
	`set_type` varchar(20)  DEFAULT NULL COMMENT '套餐分类',
	`set_id` varchar(50)  DEFAULT NULL COMMENT '套餐ID',
	`set_name` varchar(50)  DEFAULT NULL COMMENT '套餐名称',
	`set_duration` int(20)  DEFAULT NULL COMMENT '套餐有效期 单位：天',
	`set_class_count` int(20)  DEFAULT NULL COMMENT '套餐课时数 单位：节',

	`set_total_price` DECIMAL(20,2)  DEFAULT NULL COMMENT '套餐价格 单位：元',
	`set_unit_price` DECIMAL(20,2)  DEFAULT NULL COMMENT '套餐单价 单位：元',	
  `time` datetime DEFAULT NULL COMMENT '时间：年-月-日 时：分：秒',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK类型，例如python、iOS等',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK版本',
  PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='多端公用点击确认购买套餐';

#==============================================================12==========================================
CREATE TABLE `Public_ConfirmPaySet` (
  `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '事件英文名称',
  `event_name` varchar(50) DEFAULT NULL COMMENT '事件中文名称',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '神策生成的用户ID，登录后是uid',
  `type` varchar(20) DEFAULT NULL COMMENT '埋点方式',
  `user_id` varchar(100) DEFAULT NULL COMMENT '神策id',
  `date` date DEFAULT NULL COMMENT '时间：年-月-日',



	`pay_method` VARCHAR(20)  DEFAULT NULL COMMENT '支付方式:Android口语秀/外教网 支付宝支付）（288主题课/主题外教网 ios内购支付，仅限外教网APP）（口语秀/少儿英语 Android 微信，支付宝支付',
	`is_coupon_used` tinyint(1)  DEFAULT NULL COMMENT '是否使用红包',
	`redpacket_id` varchar(20)  DEFAULT NULL COMMENT '红包ID',
	`redpacket_amount` DECIMAL(20,2)  DEFAULT NULL COMMENT '红包金额',
	`pay_copprice` DECIMAL(20,2)  DEFAULT NULL COMMENT '实付价格',
	`is_jumped` tinyint(1)  DEFAULT NULL COMMENT '是否成功跳转',
	`failure_reason` varchar(255)  DEFAULT NULL COMMENT '失败原因',
	`set_type` varchar(20)  DEFAULT NULL COMMENT '套餐分类',
	`set_type_second` varchar(2)  DEFAULT NULL COMMENT '套餐类型:按课程时间/按课程数量',
	`set_id` varchar(255)  DEFAULT NULL COMMENT '套餐ID',
	`set_name` varchar(255)  DEFAULT NULL COMMENT '套餐名称',
	`set_duration` int(20)  DEFAULT NULL COMMENT '套餐有效期 单位：天',
	`set_class_count` int(20)  DEFAULT NULL COMMENT '套餐课时数 单位：节',
  `set_total_price` DECIMAL(20,2)  DEFAULT NULL COMMENT '套餐价格 单位：元',
	`set_unit_price` DECIMAL(20,2)  DEFAULT NULL COMMENT '套餐单价 单位：元',



	`time` datetime DEFAULT NULL COMMENT '时间：年-月-日 时：分：秒',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK类型，例如python、iOS等',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK版本',


   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='多端公用点击确认付款';

#=======================================================13=========================================
CREATE TABLE `Public_PaySetResult` (
   `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '事件英文名称',
  `event_name` varchar(50) DEFAULT NULL COMMENT '事件中文名称',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '神策生成的用户ID，登录后是uid',
  `type` varchar(20) DEFAULT NULL COMMENT '埋点方式',
  `user_id` varchar(100) DEFAULT NULL COMMENT '神策id',
  `date` date DEFAULT NULL COMMENT '时间：年-月-日',




	`is_coupon_used` tinyint(1)  DEFAULT NULL COMMENT '是否使用红包',
	`redpacket_id` varchar(20)  DEFAULT NULL COMMENT '红包ID',
	`redpacket_amount` DECIMAL(20,2)  DEFAULT NULL COMMENT '红包金额',
	`pay_copprice` DECIMAL(20,2)  DEFAULT NULL COMMENT '实付价格',
	`pay_method` varchar(20)  DEFAULT NULL COMMENT '支付方式:支付宝，微信，花呗，网银，库分期，ios内购',
	`is_success` tinyint(1)  DEFAULT NULL COMMENT '是否成功',
	`set_type` varchar(20)  DEFAULT NULL COMMENT '套餐分类',
	`set_type_second` tinyint(1)  DEFAULT NULL COMMENT '套餐类型:按课程时间/按课程数量',
	`set_id` varchar(20)  DEFAULT NULL COMMENT '套餐ID',
	`set_name` varchar(50)  DEFAULT NULL COMMENT '套餐名称',
	`set_duration` int(20)  DEFAULT NULL COMMENT '套餐有效期 单位：天',
	`set_class_count` int(20)  DEFAULT NULL COMMENT '套餐课时数 单位：节',
  `set_total_price` DECIMAL(20,2)  DEFAULT NULL COMMENT '套餐价格 单位：元',
	`set_unit_price` DECIMAL(20,2)  DEFAULT NULL COMMENT '套餐单价：单位：元',

	`time` datetime DEFAULT NULL COMMENT '时间：年-月-日 时：分：秒',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK类型，例如python、iOS等',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK版本',	  



   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='多端公用支付结果';


#====================================14===========================
CREATE TABLE `Public_BookByTime` (
   `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '事件英文名称',
  `event_name` varchar(50) DEFAULT NULL COMMENT '事件中文名称',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '神策生成的用户ID，登录后是uid',
  `type` varchar(20) DEFAULT NULL COMMENT '埋点方式',
  `user_id` varchar(100) DEFAULT NULL COMMENT '神祠id',
  `date` date DEFAULT NULL COMMENT '时间：年-月-日',



	`book_method` varchar(10)  DEFAULT NULL COMMENT '约课方式  按老师约课、按时间约课',
	`book_time` datetime  DEFAULT NULL COMMENT '红包ID',
	`is_new_version` tinyint(1)  DEFAULT NULL COMMENT '是否新版预约,针对web端新旧版预约方式的区分，pc独有',
	`set_id` varchar(20)  DEFAULT NULL COMMENT '套餐ID',
	`textbook_id` BIGINT(20)  DEFAULT NULL COMMENT '教材ID',
	`has_recommend` tinyint(1)  DEFAULT NULL COMMENT '是否是推荐老师',
	`teacher_gender` varchar(5)  DEFAULT NULL COMMENT '老师性别',
	`has_camera` tinyint(1)  DEFAULT NULL COMMENT '有无摄像头',
	`teacher_personality` varchar(255)  DEFAULT NULL COMMENT '老师个性',
	`teacher_style` varchar(255)  DEFAULT NULL COMMENT '教学风格',
	`class_tool` VARCHAR(20)  DEFAULT NULL COMMENT '上课工具',
	`teacher_id` VARCHAR(20)  DEFAULT NULL COMMENT '老师ID',
	`teacher_name` VARCHAR(100)  DEFAULT NULL COMMENT '老师名称',
  `is_success` tinyint(1)  DEFAULT NULL COMMENT '是否成功',
  `failure_reason` VARCHAR(255)  DEFAULT NULL COMMENT '失败原因',
  `openid` VARCHAR(100)  DEFAULT NULL COMMENT 'openID',
  `teacher_score` DOUBLE(10,2)  DEFAULT NULL COMMENT '老师评分',

	`time` datetime DEFAULT NULL COMMENT '时间：年-月-日 时：分：秒',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK类型，例如python、iOS等',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK版本',	 



   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='多端公用预约上课';



#===================================15==================================
CREATE TABLE `Public_CancelClass` (
 `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '事件英文名称',
  `event_name` varchar(50) DEFAULT NULL COMMENT '事件中文名称',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '神策生成的用户ID，登录后是uid',
  `type` varchar(20) DEFAULT NULL COMMENT '埋点方式',
  `user_id` varchar(100) DEFAULT NULL COMMENT '神策id',
  `date` date DEFAULT NULL COMMENT '时间：年-月-日',



	`teacher_id` BIGINT(20)  DEFAULT NULL COMMENT '老师ID',
	`teacher_name` varchar(20)  DEFAULT NULL COMMENT '老师名字',
	`teacher_score` DOUBLE(10,1)  DEFAULT NULL COMMENT '老师评分',
	`book_time` datetime  DEFAULT NULL COMMENT '预约时间',
	`class_tool` VARCHAR(20)  DEFAULT NULL COMMENT '上课工具:qq，skype，classIn，A-Classroom',
	`is_success` tinyint(1)  DEFAULT NULL COMMENT '是否成功',
  `failure_reason` VARCHAR(255)  DEFAULT NULL COMMENT '失败原因:点击取消，网络原因等',


  `time` datetime DEFAULT NULL COMMENT '时间：年-月-日 时：分：秒',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK类型，例如python、iOS等',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK版本',



   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='多端公用取消预约';


#==========================================16=====================================
CREATE TABLE `Public_AbcentClass` (
   `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '事件英文名称',
  `event_name` varchar(50) DEFAULT NULL COMMENT '事件中文名称',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '神策生成的用户ID，登录后是uid',
  `type` varchar(20) DEFAULT NULL COMMENT '埋点方式',
  `user_id` varchar(100) DEFAULT NULL COMMENT '神策id',
  `date` date DEFAULT NULL COMMENT '时间：年-月-日',




	`teacher_id` varchar(20)  DEFAULT NULL COMMENT '老师ID',
	`teacher_name` varchar(20)  DEFAULT NULL COMMENT '老师名字',
	`teacher_score` DOUBLE(10,1)  DEFAULT NULL COMMENT '老师评分',
	`class_tool` VARCHAR(20)  DEFAULT NULL COMMENT '上课工具:qq，skype，classIn，A-Classroom',
	`book_time` datetime  DEFAULT NULL COMMENT '预约时间',	
	`is_success` tinyint(1)  DEFAULT NULL COMMENT '是否成功',
  `is_selfclick` tinyint(1)  DEFAULT NULL COMMENT '是否学生点击:学生：我要缺席；老师：缺席',


  `time` datetime DEFAULT NULL COMMENT '时间：年-月-日 时：分：秒',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK类型，例如python、iOS等',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK版本',
	

   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='多端公用缺席';


#=============================================17======================================
CREATE TABLE `Public_Preview` (
  `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '事件英文名称',
  `event_name` varchar(50) DEFAULT NULL COMMENT '事件中文名称',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '神策生成的用户ID，登录后是uid',
  `type` varchar(20) DEFAULT NULL COMMENT '埋点方式',
  `user_id` varchar(100) DEFAULT NULL COMMENT '神策id',
  `date` date DEFAULT NULL COMMENT '时间：年-月-日',




	`textbook_id` varchar(20)  DEFAULT NULL COMMENT '教材ID',
	`textbook_name` varchar(20)  DEFAULT NULL COMMENT '教材名称',
	`class_code` BIGINT(20)  DEFAULT NULL COMMENT '课节号',
	`lesson_name` VARCHAR(50)  DEFAULT NULL COMMENT '课节名称',

  `time` datetime DEFAULT NULL COMMENT '时间：年-月-日 时：分：秒',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK类型，例如python、iOS等',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK版本',
	



   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='多端公用预习';

#===================================18===================================
CREATE TABLE `Public_TakeClass` (
  `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '事件英文名称',
  `event_name` varchar(50) DEFAULT NULL COMMENT '事件中文名称',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '神策生成的用户ID，登录后是uid',
  `type` varchar(20) DEFAULT NULL COMMENT '埋点方式',
  `user_id` varchar(100) DEFAULT NULL COMMENT '神策id',
  `date` date DEFAULT NULL COMMENT '时间：年-月-日',



	`set_id` BIGINT(20)  DEFAULT NULL COMMENT '套餐ID',
	`textbook_id` BIGINT(20)  DEFAULT NULL COMMENT '教材ID',
	`textbook_name` VARCHAR(50)  DEFAULT NULL COMMENT '教材名称',
	`class_code` BIGINT(50)  DEFAULT NULL COMMENT '课节号',
	`teacher_id` BIGINT(50)  DEFAULT NULL COMMENT '老师ID',
	`teacher_name` VARCHAR(50)  DEFAULT NULL COMMENT '老师名字',
	`book_time` datetime  DEFAULT NULL COMMENT '预约时间',
	`class_tool` VARCHAR(20)  DEFAULT NULL COMMENT '上课工具:qq，skype，classIn，A-Classroom',
	`is_last` TINYINT(1)  DEFAULT NULL COMMENT '是否最后一节课',
	`is_success` TINYINT(1)  DEFAULT NULL COMMENT '是否成功',
	`end_time` datetime  DEFAULT NULL COMMENT '结束时间',
	`is_trial` TINYINT(1)  DEFAULT NULL COMMENT '是否试课:订单金额为0的订单为试课',
	`failure_reason` VARCHAR(255)  DEFAULT NULL COMMENT '失败原因:取消课程、点击我要缺席、自动缺席、老师原因、网络原因等',

  `time` datetime DEFAULT NULL COMMENT '时间：年-月-日 时：分：秒',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK类型，例如python、iOS等',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK版本',
	



   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='多端公用结束课程';


#========================================19===========================
CREATE TABLE `Public_Exceptional` (
  `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '事件英文名称',
  `event_name` varchar(50) DEFAULT NULL COMMENT '事件中文名称',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '神策生成的用户ID，登录后是uid',
  `type` varchar(20) DEFAULT NULL COMMENT '埋点方式',
  `user_id` varchar(100) DEFAULT NULL COMMENT '神策id',
  `date` date DEFAULT NULL COMMENT '时间：年-月-日',



	`class_code` BIGINT(20)  DEFAULT NULL COMMENT '课节号',
	`teacher_id` BIGINT(20)  DEFAULT NULL COMMENT '老师ID',
	`teacher_name` VARCHAR(50)  DEFAULT NULL COMMENT '老师名称',
	`exceptional_item_name` VARCHAR(20)  DEFAULT NULL COMMENT '打赏物品名称',
	`exceptional_item_price` DOUBLE(10,2)  DEFAULT NULL COMMENT '打赏A豆数量',
	`is_success` TINYINT(1)  DEFAULT NULL COMMENT '是否打赏成功',
	`failure_reason` VARCHAR(255)  DEFAULT NULL COMMENT '失败原因:取消课程、点击我要缺席、自动缺席、老师原因、网络原因等',



  `time` datetime DEFAULT NULL COMMENT '时间：年-月-日 时：分：秒',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK类型，例如python、iOS等',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK版本',
	

	

   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='多端公用打赏';


#========================================20===========================

CREATE TABLE `Public_PublicClassViewPlay` (
`_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '事件英文名称',
  `event_name` varchar(50) DEFAULT NULL COMMENT '事件中文名称',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '神策生成的用户ID，登录后是uid',
  `type` varchar(20) DEFAULT NULL COMMENT '埋点方式',
  `user_id` varchar(100) DEFAULT NULL COMMENT '神策id',
  `date` date DEFAULT NULL COMMENT '时间：年-月-日',



	`public_class_id` BIGINT(20)  DEFAULT NULL COMMENT '公开课id',
	`public_class_name` VARCHAR(20)  DEFAULT NULL COMMENT '公开课名称',
	`broadcast_time` datetime  DEFAULT NULL COMMENT '直播时间',
	`suitable_grade` VARCHAR(20)  DEFAULT NULL COMMENT '适合等级',
	`video_id` BIGINT(20)  DEFAULT NULL COMMENT '视频ID',
	`$event_duration` int(20)  DEFAULT NULL COMMENT '事件时长',
	`teacher_id` BIGINT(20)  DEFAULT NULL COMMENT '老师ID',
	`video_viewing_times` int(20)  DEFAULT NULL COMMENT '回放次数',
	`button_name` VARCHAR(20)  DEFAULT NULL COMMENT '按钮名称:播放/暂停，音量',
	`teacher_name` VARCHAR(50)  DEFAULT NULL COMMENT '老师名字',


  `time` datetime DEFAULT NULL COMMENT '时间：年-月-日 时：分：秒',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK类型，例如python、iOS等',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK版本',
	


   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='多端公用查看录播课';






