/*
Brady Goodwin
CS 325- Fall 2016
11/12
*/


drop table cus cascade constraints;

create table cus
(CUS_ID			char(6),
f_name			varchar2(10), 
l_name	 		varchar2(10),
first_visit		date,
num_trans		smallint,
primary key (CUS_ID)	
);




drop table job_title_charge cascade constraints;

create table job_title_charge
(JOB_TITLE		varchar2(40)	check(job_title in
									  ('Manager', 'Cus Service', 
									  'Assistant to the Regional Manager',
										'Logistics')),
hourly_wage		decimal(5,2),
primary key (job_title)
);




drop table emp cascade constraints;

create table emp
(EMP_ID			char(5),
f_name			varchar2(10), 
l_name	 		varchar2(10),
hire_date		date,
weekly_hours	decimal(4,2),
job_title		varchar2(40)	check(job_title in
									  ('Manager', 'Cus Service', 
									  'Assistant to the Regional Manager',
										'Logistics')),
primary key (EMP_ID),
foreign key (job_title) references job_title_charge
);





drop table trans cascade constraints;

create table trans
(TRANS_ID		char(7), 
trans_date		date,
emp_id			char(5),
cus_id			char(6),
trans_time		timestamp,
primary  key	(TRANS_ID),
foreign key (cus_id) references cus(cus_id),
foreign key (emp_id) references emp(emp_id)
);




drop table supplier cascade constraints;

create table supplier
(SUP_ID			char(5),
sup_name		varchar2(20),
num_shipments	smallint,     
primary key (SUP_ID)
);		
 


drop table shipment cascade constraints;

create table shipment
(TRACKING_NUM	char(7),
ship_date		date, 
cost			decimal(8,2),
sup_id			char(5),
ship_time		timestamp,
primary key (TRACKING_NUM),
foreign key (sup_id) references supplier
);




drop table stock cascade constraints;

create table stock
(STOCK_CODE		char(7),
num_in_stock	smallint,
price			decimal(5,2),	
title			varchar2(30),
stock_type		char(1)		check (stock_type in
									('a', 'm')),
primary key (STOCK_CODE)
);


drop table ship_transaction cascade constraints;

create table ship_transaction
(TRACKING_NUM	char(7),
STOCK_CODE		char(7),
primary key (TRACKING_NUM, STOCK_CODE),
foreign key (tracking_num) references shipment,
foreign key (stock_code) references stock
);


drop table	movies cascade constraints;
 
create table movies
(STOCK_CODE		char(7),
title			varchar2(30),
director		varchar2(20),
genre			varchar2(12),
mpaa			varchar2(5)     check(mpaa in 
                                             ('G', 'PG', 'PG-13',
                                              'R', 'A')),
primary key	(stock_code)
);




drop table movie_format cascade constraints;

create table movie_format
(STOCK_CODE		char(7),
M_FORMAT		varchar2(10)	check (M_FORMAT in 
										('DVD', 'Blu', 'VHS')),
primary key	(stock_code, m_format),
foreign key (stock_code) references movies
);



drop table	albums cascade constraints;
 
create table albums
(STOCK_CODE		char(7),
title			varchar2(30),
artist			varchar2(20),
genre			varchar2(12),
primary key	(stock_code)
);



drop table album_format cascade constraints;

create table album_format
(STOCK_CODE		char(7),
A_FORMAT		varchar2(10)	check (A_FORMAT in 
										('Album', 'Tape', 'CD')),
primary key	(stock_code, a_format),
foreign key (stock_code) references albums
);






