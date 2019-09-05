
CREATE TABLE `Public_ConfirmBuySet` (
  `_track_id` bigint(50) NOT NULL,
  `event` varchar(100) DEFAULT NULL COMMENT '�¼�Ӣ������',
  `event_name` varchar(100) DEFAULT NULL COMMENT 'ʱ����������',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '������ɵ��û�ID����¼����uid',
  `type` varchar(20) DEFAULT NULL COMMENT '��㷽ʽ',
  `user_id` varchar(100) DEFAULT NULL COMMENT '���id',
  `date` date DEFAULT NULL COMMENT 'ʱ�䣺��-��-��',
	`set_type` varchar(20)  DEFAULT NULL COMMENT '�ײͷ���',
	`set_id` varchar(50)  DEFAULT NULL COMMENT '�ײ�ID',
	`set_name` varchar(50)  DEFAULT NULL COMMENT '�ײ�����',
	`set_duration` int(20)  DEFAULT NULL COMMENT '�ײ���Ч�� ��λ����',
	`set_class_count` int(20)  DEFAULT NULL COMMENT '�ײͿ�ʱ�� ��λ����',

	`set_total_price` DECIMAL(20,2)  DEFAULT NULL COMMENT '�ײͼ۸� ��λ��Ԫ',
	`set_unit_price` DECIMAL(20,2)  DEFAULT NULL COMMENT '�ײ͵��� ��λ��Ԫ',	
  `time` datetime DEFAULT NULL COMMENT 'ʱ�䣺��-��-�� ʱ���֣���',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK���ͣ�����python��iOS��',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK�汾',
  PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��˹��õ��ȷ�Ϲ����ײ�';

#==============================================================12==========================================
CREATE TABLE `Public_ConfirmPaySet` (
  `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '�¼�Ӣ������',
  `event_name` varchar(50) DEFAULT NULL COMMENT '�¼���������',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '������ɵ��û�ID����¼����uid',
  `type` varchar(20) DEFAULT NULL COMMENT '��㷽ʽ',
  `user_id` varchar(100) DEFAULT NULL COMMENT '���id',
  `date` date DEFAULT NULL COMMENT 'ʱ�䣺��-��-��',



	`pay_method` VARCHAR(20)  DEFAULT NULL COMMENT '֧����ʽ:Android������/����� ֧����֧������288�����/��������� ios�ڹ�֧�������������APP����������/�ٶ�Ӣ�� Android ΢�ţ�֧����֧��',
	`is_coupon_used` tinyint(1)  DEFAULT NULL COMMENT '�Ƿ�ʹ�ú��',
	`redpacket_id` varchar(20)  DEFAULT NULL COMMENT '���ID',
	`redpacket_amount` DECIMAL(20,2)  DEFAULT NULL COMMENT '������',
	`pay_copprice` DECIMAL(20,2)  DEFAULT NULL COMMENT 'ʵ���۸�',
	`is_jumped` tinyint(1)  DEFAULT NULL COMMENT '�Ƿ�ɹ���ת',
	`failure_reason` varchar(255)  DEFAULT NULL COMMENT 'ʧ��ԭ��',
	`set_type` varchar(20)  DEFAULT NULL COMMENT '�ײͷ���',
	`set_type_second` varchar(2)  DEFAULT NULL COMMENT '�ײ�����:���γ�ʱ��/���γ�����',
	`set_id` varchar(255)  DEFAULT NULL COMMENT '�ײ�ID',
	`set_name` varchar(255)  DEFAULT NULL COMMENT '�ײ�����',
	`set_duration` int(20)  DEFAULT NULL COMMENT '�ײ���Ч�� ��λ����',
	`set_class_count` int(20)  DEFAULT NULL COMMENT '�ײͿ�ʱ�� ��λ����',
  `set_total_price` DECIMAL(20,2)  DEFAULT NULL COMMENT '�ײͼ۸� ��λ��Ԫ',
	`set_unit_price` DECIMAL(20,2)  DEFAULT NULL COMMENT '�ײ͵��� ��λ��Ԫ',



	`time` datetime DEFAULT NULL COMMENT 'ʱ�䣺��-��-�� ʱ���֣���',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK���ͣ�����python��iOS��',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK�汾',


   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��˹��õ��ȷ�ϸ���';

#=======================================================13=========================================
CREATE TABLE `Public_PaySetResult` (
   `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '�¼�Ӣ������',
  `event_name` varchar(50) DEFAULT NULL COMMENT '�¼���������',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '������ɵ��û�ID����¼����uid',
  `type` varchar(20) DEFAULT NULL COMMENT '��㷽ʽ',
  `user_id` varchar(100) DEFAULT NULL COMMENT '���id',
  `date` date DEFAULT NULL COMMENT 'ʱ�䣺��-��-��',




	`is_coupon_used` tinyint(1)  DEFAULT NULL COMMENT '�Ƿ�ʹ�ú��',
	`redpacket_id` varchar(20)  DEFAULT NULL COMMENT '���ID',
	`redpacket_amount` DECIMAL(20,2)  DEFAULT NULL COMMENT '������',
	`pay_copprice` DECIMAL(20,2)  DEFAULT NULL COMMENT 'ʵ���۸�',
	`pay_method` varchar(20)  DEFAULT NULL COMMENT '֧����ʽ:֧������΢�ţ����£�����������ڣ�ios�ڹ�',
	`is_success` tinyint(1)  DEFAULT NULL COMMENT '�Ƿ�ɹ�',
	`set_type` varchar(20)  DEFAULT NULL COMMENT '�ײͷ���',
	`set_type_second` tinyint(1)  DEFAULT NULL COMMENT '�ײ�����:���γ�ʱ��/���γ�����',
	`set_id` varchar(20)  DEFAULT NULL COMMENT '�ײ�ID',
	`set_name` varchar(50)  DEFAULT NULL COMMENT '�ײ�����',
	`set_duration` int(20)  DEFAULT NULL COMMENT '�ײ���Ч�� ��λ����',
	`set_class_count` int(20)  DEFAULT NULL COMMENT '�ײͿ�ʱ�� ��λ����',
  `set_total_price` DECIMAL(20,2)  DEFAULT NULL COMMENT '�ײͼ۸� ��λ��Ԫ',
	`set_unit_price` DECIMAL(20,2)  DEFAULT NULL COMMENT '�ײ͵��ۣ���λ��Ԫ',

	`time` datetime DEFAULT NULL COMMENT 'ʱ�䣺��-��-�� ʱ���֣���',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK���ͣ�����python��iOS��',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK�汾',	  



   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��˹���֧�����';


#====================================14===========================
CREATE TABLE `Public_BookByTime` (
   `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '�¼�Ӣ������',
  `event_name` varchar(50) DEFAULT NULL COMMENT '�¼���������',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '������ɵ��û�ID����¼����uid',
  `type` varchar(20) DEFAULT NULL COMMENT '��㷽ʽ',
  `user_id` varchar(100) DEFAULT NULL COMMENT '����id',
  `date` date DEFAULT NULL COMMENT 'ʱ�䣺��-��-��',



	`book_method` varchar(10)  DEFAULT NULL COMMENT 'Լ�η�ʽ  ����ʦԼ�Ρ���ʱ��Լ��',
	`book_time` datetime  DEFAULT NULL COMMENT '���ID',
	`is_new_version` tinyint(1)  DEFAULT NULL COMMENT '�Ƿ��°�ԤԼ,���web���¾ɰ�ԤԼ��ʽ�����֣�pc����',
	`set_id` varchar(20)  DEFAULT NULL COMMENT '�ײ�ID',
	`textbook_id` BIGINT(20)  DEFAULT NULL COMMENT '�̲�ID',
	`has_recommend` tinyint(1)  DEFAULT NULL COMMENT '�Ƿ����Ƽ���ʦ',
	`teacher_gender` varchar(5)  DEFAULT NULL COMMENT '��ʦ�Ա�',
	`has_camera` tinyint(1)  DEFAULT NULL COMMENT '��������ͷ',
	`teacher_personality` varchar(255)  DEFAULT NULL COMMENT '��ʦ����',
	`teacher_style` varchar(255)  DEFAULT NULL COMMENT '��ѧ���',
	`class_tool` VARCHAR(20)  DEFAULT NULL COMMENT '�Ͽι���',
	`teacher_id` VARCHAR(20)  DEFAULT NULL COMMENT '��ʦID',
	`teacher_name` VARCHAR(100)  DEFAULT NULL COMMENT '��ʦ����',
  `is_success` tinyint(1)  DEFAULT NULL COMMENT '�Ƿ�ɹ�',
  `failure_reason` VARCHAR(255)  DEFAULT NULL COMMENT 'ʧ��ԭ��',
  `openid` VARCHAR(100)  DEFAULT NULL COMMENT 'openID',
  `teacher_score` DOUBLE(10,2)  DEFAULT NULL COMMENT '��ʦ����',

	`time` datetime DEFAULT NULL COMMENT 'ʱ�䣺��-��-�� ʱ���֣���',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK���ͣ�����python��iOS��',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK�汾',	 



   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��˹���ԤԼ�Ͽ�';



#===================================15==================================
CREATE TABLE `Public_CancelClass` (
 `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '�¼�Ӣ������',
  `event_name` varchar(50) DEFAULT NULL COMMENT '�¼���������',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '������ɵ��û�ID����¼����uid',
  `type` varchar(20) DEFAULT NULL COMMENT '��㷽ʽ',
  `user_id` varchar(100) DEFAULT NULL COMMENT '���id',
  `date` date DEFAULT NULL COMMENT 'ʱ�䣺��-��-��',



	`teacher_id` BIGINT(20)  DEFAULT NULL COMMENT '��ʦID',
	`teacher_name` varchar(20)  DEFAULT NULL COMMENT '��ʦ����',
	`teacher_score` DOUBLE(10,1)  DEFAULT NULL COMMENT '��ʦ����',
	`book_time` datetime  DEFAULT NULL COMMENT 'ԤԼʱ��',
	`class_tool` VARCHAR(20)  DEFAULT NULL COMMENT '�Ͽι���:qq��skype��classIn��A-Classroom',
	`is_success` tinyint(1)  DEFAULT NULL COMMENT '�Ƿ�ɹ�',
  `failure_reason` VARCHAR(255)  DEFAULT NULL COMMENT 'ʧ��ԭ��:���ȡ��������ԭ���',


  `time` datetime DEFAULT NULL COMMENT 'ʱ�䣺��-��-�� ʱ���֣���',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK���ͣ�����python��iOS��',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK�汾',



   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��˹���ȡ��ԤԼ';


#==========================================16=====================================
CREATE TABLE `Public_AbcentClass` (
   `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '�¼�Ӣ������',
  `event_name` varchar(50) DEFAULT NULL COMMENT '�¼���������',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '������ɵ��û�ID����¼����uid',
  `type` varchar(20) DEFAULT NULL COMMENT '��㷽ʽ',
  `user_id` varchar(100) DEFAULT NULL COMMENT '���id',
  `date` date DEFAULT NULL COMMENT 'ʱ�䣺��-��-��',




	`teacher_id` varchar(20)  DEFAULT NULL COMMENT '��ʦID',
	`teacher_name` varchar(20)  DEFAULT NULL COMMENT '��ʦ����',
	`teacher_score` DOUBLE(10,1)  DEFAULT NULL COMMENT '��ʦ����',
	`class_tool` VARCHAR(20)  DEFAULT NULL COMMENT '�Ͽι���:qq��skype��classIn��A-Classroom',
	`book_time` datetime  DEFAULT NULL COMMENT 'ԤԼʱ��',	
	`is_success` tinyint(1)  DEFAULT NULL COMMENT '�Ƿ�ɹ�',
  `is_selfclick` tinyint(1)  DEFAULT NULL COMMENT '�Ƿ�ѧ�����:ѧ������Ҫȱϯ����ʦ��ȱϯ',


  `time` datetime DEFAULT NULL COMMENT 'ʱ�䣺��-��-�� ʱ���֣���',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK���ͣ�����python��iOS��',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK�汾',
	

   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��˹���ȱϯ';


#=============================================17======================================
CREATE TABLE `Public_Preview` (
  `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '�¼�Ӣ������',
  `event_name` varchar(50) DEFAULT NULL COMMENT '�¼���������',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '������ɵ��û�ID����¼����uid',
  `type` varchar(20) DEFAULT NULL COMMENT '��㷽ʽ',
  `user_id` varchar(100) DEFAULT NULL COMMENT '���id',
  `date` date DEFAULT NULL COMMENT 'ʱ�䣺��-��-��',




	`textbook_id` varchar(20)  DEFAULT NULL COMMENT '�̲�ID',
	`textbook_name` varchar(20)  DEFAULT NULL COMMENT '�̲�����',
	`class_code` BIGINT(20)  DEFAULT NULL COMMENT '�νں�',
	`lesson_name` VARCHAR(50)  DEFAULT NULL COMMENT '�ν�����',

  `time` datetime DEFAULT NULL COMMENT 'ʱ�䣺��-��-�� ʱ���֣���',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK���ͣ�����python��iOS��',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK�汾',
	



   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��˹���Ԥϰ';

#===================================18===================================
CREATE TABLE `Public_TakeClass` (
  `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '�¼�Ӣ������',
  `event_name` varchar(50) DEFAULT NULL COMMENT '�¼���������',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '������ɵ��û�ID����¼����uid',
  `type` varchar(20) DEFAULT NULL COMMENT '��㷽ʽ',
  `user_id` varchar(100) DEFAULT NULL COMMENT '���id',
  `date` date DEFAULT NULL COMMENT 'ʱ�䣺��-��-��',



	`set_id` BIGINT(20)  DEFAULT NULL COMMENT '�ײ�ID',
	`textbook_id` BIGINT(20)  DEFAULT NULL COMMENT '�̲�ID',
	`textbook_name` VARCHAR(50)  DEFAULT NULL COMMENT '�̲�����',
	`class_code` BIGINT(50)  DEFAULT NULL COMMENT '�νں�',
	`teacher_id` BIGINT(50)  DEFAULT NULL COMMENT '��ʦID',
	`teacher_name` VARCHAR(50)  DEFAULT NULL COMMENT '��ʦ����',
	`book_time` datetime  DEFAULT NULL COMMENT 'ԤԼʱ��',
	`class_tool` VARCHAR(20)  DEFAULT NULL COMMENT '�Ͽι���:qq��skype��classIn��A-Classroom',
	`is_last` TINYINT(1)  DEFAULT NULL COMMENT '�Ƿ����һ�ڿ�',
	`is_success` TINYINT(1)  DEFAULT NULL COMMENT '�Ƿ�ɹ�',
	`end_time` datetime  DEFAULT NULL COMMENT '����ʱ��',
	`is_trial` TINYINT(1)  DEFAULT NULL COMMENT '�Ƿ��Կ�:�������Ϊ0�Ķ���Ϊ�Կ�',
	`failure_reason` VARCHAR(255)  DEFAULT NULL COMMENT 'ʧ��ԭ��:ȡ���γ̡������Ҫȱϯ���Զ�ȱϯ����ʦԭ������ԭ���',

  `time` datetime DEFAULT NULL COMMENT 'ʱ�䣺��-��-�� ʱ���֣���',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK���ͣ�����python��iOS��',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK�汾',
	



   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��˹��ý����γ�';


#========================================19===========================
CREATE TABLE `Public_Exceptional` (
  `_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '�¼�Ӣ������',
  `event_name` varchar(50) DEFAULT NULL COMMENT '�¼���������',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '������ɵ��û�ID����¼����uid',
  `type` varchar(20) DEFAULT NULL COMMENT '��㷽ʽ',
  `user_id` varchar(100) DEFAULT NULL COMMENT '���id',
  `date` date DEFAULT NULL COMMENT 'ʱ�䣺��-��-��',



	`class_code` BIGINT(20)  DEFAULT NULL COMMENT '�νں�',
	`teacher_id` BIGINT(20)  DEFAULT NULL COMMENT '��ʦID',
	`teacher_name` VARCHAR(50)  DEFAULT NULL COMMENT '��ʦ����',
	`exceptional_item_name` VARCHAR(20)  DEFAULT NULL COMMENT '������Ʒ����',
	`exceptional_item_price` DOUBLE(10,2)  DEFAULT NULL COMMENT '����A������',
	`is_success` TINYINT(1)  DEFAULT NULL COMMENT '�Ƿ���ͳɹ�',
	`failure_reason` VARCHAR(255)  DEFAULT NULL COMMENT 'ʧ��ԭ��:ȡ���γ̡������Ҫȱϯ���Զ�ȱϯ����ʦԭ������ԭ���',



  `time` datetime DEFAULT NULL COMMENT 'ʱ�䣺��-��-�� ʱ���֣���',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK���ͣ�����python��iOS��',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK�汾',
	

	

   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��˹��ô���';


#========================================20===========================

CREATE TABLE `Public_PublicClassViewPlay` (
`_track_id` bigint(50) NOT NULL,
  `event` varchar(20) DEFAULT NULL COMMENT '�¼�Ӣ������',
  `event_name` varchar(50) DEFAULT NULL COMMENT '�¼���������',
  `distinct_id` varchar(100) DEFAULT NULL COMMENT '������ɵ��û�ID����¼����uid',
  `type` varchar(20) DEFAULT NULL COMMENT '��㷽ʽ',
  `user_id` varchar(100) DEFAULT NULL COMMENT '���id',
  `date` date DEFAULT NULL COMMENT 'ʱ�䣺��-��-��',



	`public_class_id` BIGINT(20)  DEFAULT NULL COMMENT '������id',
	`public_class_name` VARCHAR(20)  DEFAULT NULL COMMENT '����������',
	`broadcast_time` datetime  DEFAULT NULL COMMENT 'ֱ��ʱ��',
	`suitable_grade` VARCHAR(20)  DEFAULT NULL COMMENT '�ʺϵȼ�',
	`video_id` BIGINT(20)  DEFAULT NULL COMMENT '��ƵID',
	`$event_duration` int(20)  DEFAULT NULL COMMENT '�¼�ʱ��',
	`teacher_id` BIGINT(20)  DEFAULT NULL COMMENT '��ʦID',
	`video_viewing_times` int(20)  DEFAULT NULL COMMENT '�طŴ���',
	`button_name` VARCHAR(20)  DEFAULT NULL COMMENT '��ť����:����/��ͣ������',
	`teacher_name` VARCHAR(50)  DEFAULT NULL COMMENT '��ʦ����',


  `time` datetime DEFAULT NULL COMMENT 'ʱ�䣺��-��-�� ʱ���֣���',
  `$lib` varchar(20) DEFAULT NULL COMMENT 'SDK���ͣ�����python��iOS��',
  `$lib_version` varchar(20) DEFAULT NULL COMMENT 'SDK�汾',
	


   PRIMARY KEY (`_track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��˹��ò鿴¼����';






