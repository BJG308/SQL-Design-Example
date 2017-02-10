/*
Brady Goodwin
CS 325- Fall 2016
11/29
*/

spool 325result-contents.txt


prompt Displaying table cus (Customer):

select CUS_ID, f_name, l_name
from cus;

select CUS_ID, first_visit, num_trans
from cus;


prompt Displaying table job_title_charge:

select *
from job_title_charge;


prompt Displaying table emp (employee):

select EMP_ID, f_name, l_name
from emp;

select EMP_ID, hire_date, weekly_hours, job_title
from emp;



prompt Displaying table trans (transaction):

select trans_id, trans_time
from trans;

select trans_id, emp_id, cus_id
from trans;



prompt Displaying tables supplier

select *
from supplier;




prompt Displaying table shipment:

select tracking_num, ship_date, cost
from shipment;

select tracking_num, sup_id, ship_time
from shipment;



prompt displaying table stock:

select stock_code, title, stock_type
from stock;

select stock_code, price, num_in_stock
from stock;



prompt displaying table ship transaction:

select *
from ship_transaction;



prompt displaying table movies:

select *
from movies;



prompt displaying table movie_format:

select *
from movie_format;



prompt displaying table albums:

select *
from albums;


prompt displaying table album format:

select * 
from album_format;












spool off