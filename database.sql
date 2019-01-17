create database weather;

use weather;

create table device(
	device_id int not null primary key,
    device_name varchar(20) not null
);

create table weather_data(
	time_stamp date not null,
    device_id int not null,
    temperature float(6,2),
    humidity float(6,2),
    pressure float(6,2),
    light float(6,2),
    time_of_day time not null,
    primary key (device_id,time_of_day),
    key fk_device_id (device_id),
    constraint fk_device_id foreign key (device_id) references device (device_id)
);

