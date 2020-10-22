use [online_db]
go
create table department(
	dept_name varchar(150) primary key,
	building varchar(150),
	budget money
);
create table student(
	id int primary key,
	name varchar(150),
	dept_name varchar(150),
	tot_cred varchar(150),
	FOREIGN KEY (dept_name) REFERENCES department(dept_name)
);
create table instructor(
	id int primary key,
	name varchar(150),
	dept_name varchar(150),
	salary money,
	FOREIGN KEY (dept_name) REFERENCES department(dept_name)
);
create table advisor(
	s_id int,
	i_id int,
	FOREIGN KEY (s_id) REFERENCES instructor(id),
	FOREIGN KEY (s_id) REFERENCES student(id)
);
create table course(
	course_id int primary key,
	title varchar(150),
	dept_name varchar(150),
	credits int,
	FOREIGN KEY (dept_name) REFERENCES department(dept_name)
);
create table prereq(
	course_id int,
	prereq_id int,
	FOREIGN KEY (course_id) REFERENCES course(course_id),
	FOREIGN KEY (prereq_id) REFERENCES course(course_id)
);
create table classroom(
	building varchar(150),
	room_no int,
	capacity int,
	CONSTRAINT PK_classroom PRIMARY KEY (building,room_no)
);
create table section(
	course_id int,
	sec_id varchar(150),
	semester varchar(150),
	year int,
	building varchar(150),
	room_no int,
	time_slot_id int,
	CONSTRAINT PK_section PRIMARY KEY (course_id,sec_id,semester,year),
	FOREIGN KEY (building,room_no) REFERENCES classroom(building,room_no)
);
create table takes(
	id int,
	course_id int,
	sec_id varchar(150),
	semester varchar(150),
	year int,
	grade int,
	FOREIGN KEY (course_id,sec_id,semester,year) REFERENCES section(course_id,sec_id,semester,year),
	FOREIGN KEY (id) REFERENCES student(id)
);
create table teaches(
	id int,
	course_id int,
	sec_id varchar(150),
	semester varchar(150),
	year int,
	FOREIGN KEY (course_id,sec_id,semester,year) REFERENCES section(course_id,sec_id,semester,year),
	FOREIGN KEY (id) REFERENCES instructor(id)
);