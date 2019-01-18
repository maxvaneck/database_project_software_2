CREATE DATABASE weather;

USE weather;

CREATE TABLE device(
	device_id INT NOT NULL PRIMARY KEY,
    device_name VARCHAR(20) NOT NULL
);

CREATE TABLE weather_data(
	time_stamp DATE NOT NULL,
    device_id INT NOT NULL,
    temperature FLOAT(6,2),
    humidity FLOAT(6,2),
    pressure FLOAT(6,2),
    light FLOAT(6,2),
    time_of_day TIME NOT NULL,
    PRIMARY KEY (device_id,time_of_day),
    KEY fk_device_id (device_id),
    CONSTRAINT fk_device_id FOREIGN KEY (device_id) REFERENCES device (device_id)
);

INSERT INTO device VALUES(1,'lopy_1');
INSERT INTO device VALUES(2,'lopy_2');

