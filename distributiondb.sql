create table `user`(
	user_id varchar(10) not null,
	user_name varchar(10) not null,
	user_remarks varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
insert into `user` values('001','学习组','好好学习，天天向上');
create table admin(
	admin_id varchar(10) not null,
	admin_name varchar(10),
	admin_sex int,
	uesr_id varchar(10) references `user`(user_id),
	user_type int,
	city_id varchar(10),
	admin_address varchar(10),
	admin_pwd varchar(10),
	admin_phone varchar(20),
	admin_remarks varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
insert into admin values('001','刘德华',0,'001',0,'1','001街','123456','15832421093','天王');
create table customer(
	customer_id varchar(10) not null,
	customer_name varchar(10),
	customer_sex int,
	user_id varchar(10) references `user`(user_id),
	customer_pwd varchar(10),
	customer_phone varchar(20),
	customer_birthday datetime,
	customer_address varchar(50),
	customer_remarks varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
insert into customer values('001','黎明',0,'001','123456','13378945637','1987-10-08','002街','常驻客户')
create table `order`(
	order_id varchar(10) not null,
	order_type int,
	handover_id varchar(10),
	goods_name varchar(20),
	goods_weight int,
	mailer_name varchar(20),
	mailer_address varchar(50),
	mailer_phone varchar(20),
	receiver_name varchar(20),
	receiver_type int,
	receiver_address varchar(50),
	receiver_phone varchar(20),
	start_city varchar(10),
	middle_city varchar(10),
	end_city varchar(10),
	transport_price decimal(18,0),
	distribution_price decimal(18,0),
	carriage_price decimal(18,0),
	total_price varchar(10),
	vehicle_id varchar(10),
	order_remarks varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
insert into `order` values('001',0,'001','飞科剃须刀',1,'郭富城','002街','13378943433',
'黎明',0,'002街','13378945637','001','002','003',10,10,10,'30','001','用的放心');
create table province(
	province_id varchar(10) not null,
	province_name varchar(10)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
insert into province values('001','北京市'),('002','天津市'),('0033','上海市');
create table city(
	city_id varchar(10) not null,
	city_name varchar(10),
	province_id varchar(10) references province(province_id)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
insert into city values('001','张家口','001'),('002','秦皇岛','001');
create table region(
	region_id varchar(10) not null,
	region_name varchar(50),
	city_id varchar(10) references city(city_id)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
insert into region values('001','宣化区','001'),('002','尚义县','001');
create table route(
	route_id varchar(10) not null,
	route_name varchar(10),
	start_province varchar(10) references province(province_id),
	start_city varchar(10) references city(city_id),
	middle_province varchar(10) references province(province_id),
	middle_city varchar(10) references city(city_id),
	end_province varchar(10) references province(province_id),
	end__city varchar(10) references city(city_id),
	carriage_price decimal(18,0),
	route_remarks varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
insert into route values('001','加急路线','001','001','','','002','002',30,'加急');
create table vehicle(
	vehicle_id varchar(10) not null,
	vehicle_type varchar(10),
	production_address varchar(10),
	route_id varchar(10) references route(route_id),
	production_date datetime,
	buy_date datetime,
	vehicle_remarks varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
insert into vehicle values('001','K8G8','北京','001','2018-5-10','2018-10-20','特快')
create table handover(
	start_city varchar(10) not null,
	end_city varchar(10),
	arrived_city varchar(10),
	handover_type int,
	generation_time datetime,
	handover_remarks varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
insert into handover values('001','002','',1,'2018-10-20','尽快运输');
create table distribution(
	distribution_id varchar(10) not null,
	distribution_name varchar(10),
	province_id varchar(10) references province(province_id),
	city_id varchar(10) references city(city_id),
	admin_id varchar(10) references admin(admin_id),
	distribution_phone varchar(20),
	distribution_address varchar(50),
	distribution_remarks varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
insert into distribution values('001','圆通','001','001','001','15070668377','005街','');
create table `range`(
	range_id int not null,
	range_name varchar(10),
	range_price decimal(18,0),
	city_id varchar(10) references city(city_id),
	range_remarks varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
insert into `range`  values(1,'005街',5,'001','')