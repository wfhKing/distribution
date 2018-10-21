create table `user`(
	user_id varchar(10) not null,
	user_name varchar(10) not null,
	user_remarks varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
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
create table `order`(
	order_id varchar(10) not null,
	order_type int,
	order_number varchar(10),
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
create table province(
	province_id varchar(10) not null,
	province_name varchar(10)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
create table city(
	city_id varchar(10) not null,
	city_name varchar(10),
	province_id varchar(10) references province(province_id)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
create table region(
	region_id varchar(10) not null,
	region_name varchar(50),
	city_id varchar(10) references city(city_id)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
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
create table vehicle(
	vehicle_id varchar(10) not null,
	vehicle_type varchar(10),
	production_address varchar(10),
	route_id varchar(10) references route(route_id),
	production_date datetime,
	buy_date datetime,
	vehicle_remarks varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
create table handover(
	start_city varchar(10) not null,
	end_city varchar(10),
	arrived_city varchar(10),
	handover_type int,
	generation_time datetime,
	handover_remarks varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
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
create table `range`(
	range_id int not null,
	range_name varchar(10),
	range_price decimal(18,0),
	city_id varchar(10) references city(city_id),
	range_remarks varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;