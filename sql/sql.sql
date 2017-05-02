drop database if exists `SDOJ`;

create database `SDOJ` default character set utf8 COLLATE utf8_general_ci ;

use `SDOJ`;

create table user(

	id varchar(20),
	username varchar(32),
	truename varchar(32),
	password varchar(32),
	email varchar(64),
	sex varchar(16),
	tel varchar(32),
	role int default '0',
	
    primary key(username)
    
)engine=InnoDB default charset=utf8;

create table problem(

	pid int unsigned auto_increment,
	pname varchar(128) NOT NULL,
	ratio float default '0.00',
	accepted int default '0',
	submited int default '0',
	discription blob NOT NULL,
	input blob,
	output blob,
	inputCase blob,
	outputCase blob,
	timeLimit float default '1.0',
	memoryLimit int default '65535',
	author varchar(32),
	contest int default '0',
	visable int default '0',
    tag varchar(2014),
	
	primary key(pid)

)engine=InnoDB auto_increment=1 default charset=utf8;

create table status(

	rid int unsigned auto_increment,
	pid int, 
	status varchar(32), 
	rtime float,
	rmemory int,
	owner varchar(32),
	compiler varchar(16),
	submitTime time,
	codeLength int,
    contest int,
    
	primary key(rid)
	
)engine=InnoDB auto_increment=1 default charset=utf8;

create table contest(

	cid int unsigned auto_increment,
	cname varchar(128),
	timeStart time,
	timeEnd time,
	password varchar(20),
    problem varchar(1024),
	author int NOT NULL,
	
	primary key (cid)
)engine=InnoDB auto_increment=1 default charset=utf8;

