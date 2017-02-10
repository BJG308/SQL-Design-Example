/*
Brady Goodwin
CS 325- Fall 2016
11/29
*/





insert into cus
values
('000A23', 'Doug', 'Stanhope', CURRENT_TIMESTAMP, 2);

insert into cus
values
('000A24', 'Dan', 'Stoop', CURRENT_TIMESTAMP, 4);

insert into cus
values
('000A25', 'Sam', 'Saloon', CURRENT_TIMESTAMP, 1);






insert into job_title_charge
values
('Manager', '20');

insert into job_title_charge
values
('Cus Service', '10');

insert into job_title_charge
values
('Assistant to the Regional Manager', '200');

insert into job_title_charge
values
('Logistics', '12');





insert into emp
values
('12345', 'Jimbo', 'Slice', CURRENT_TIMESTAMP, '20.50', 'Manager');


insert into emp
values
('12346', 'Betty', 'Carazon', CURRENT_TIMESTAMP, '10.5', 'Cus Service');


insert into emp
values
('12347', 'Ben', 'Carson', CURRENT_TIMESTAMP, '12.5', 'Logistics');

insert into emp
values
('12348', 'Dwight', 'Shrute', CURRENT_TIMESTAMP, '45', 'Assistant to the Regional Manager');






insert into trans
values
('1234568', current_timestamp, '12348', '000A23', current_timestamp);




insert into supplier
values
('12345', 'RecordDudes', 203);


insert into supplier
values
('12346', 'Movie Guys', 22);





insert into shipment
values
('1234567', current_timestamp, 2200.90, '12345', current_timestamp);





insert into stock
values
('1234567', 20, 32.34, 'Rocky Horror Picture Show', 'm');   

insert into stock
values
('1234568', 10, 12.34, 'Kid A', 'a');   





insert into ship_transaction
values
('1234567', '1234567');











insert into movies
values
('1234567', 'Rocky Horror Picture Show', 'Dan Rather', 'Musical', 'R');   






insert into movie_format
values
('1234567', 'VHS');    





insert into albums
values
('1234568', 'Kid A', 'Radiohead', 'Experimental');   




insert into album_format
values
('1234568', 'Tape');
