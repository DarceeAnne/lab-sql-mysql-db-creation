SELECT * FROM car_dealership.dim_customer;

INSERT INTO dim_customer (name, phone_number, email, street_address, city, state_province, country, zip_postal_code, customer_id)
VALUES ('John Doe', '123456', 'johndoe@example.com', '1 rue de paris', 'paris', 'il de france', 'france', '75007', 'c1'),
	   ('Jane Smith', '123456', 'janesmith@example.com', '1 rue de paris', 'paris', 'il de france', 'france', '75007', 'c2'),
       ('Bob Johnson', '123456', 'bobjohnson@example.com', '1 rue de paris', 'paris', 'il de france', 'france', '75007', 'c3');

SELECT * FROM dim_customer;

SELECT * FROM car_dealership.dim_cars;

INSERT INTO dim_cars (manufacturer , model, year, color, VIN)
VALUES ('Volkswagen','Tiguan','2019','Blue','3K096I98581DHSNUP'),
	   ('Peugeot','Rifter','2019','	Red','ZM8G7BEUQZ97IH46V'),
       ('Ford','Fusion','2018','White','RKXVNNIHLVVZOUB4M'),
	   ('Toyota','RAV4','2018','Silver','HKNDGS7CU31E9Z7JW'),
       ('Volvo','V60','2019','Gray','DAM41UDN3CHU2WVF6'),
       ('Volvo','V60 Cross Country','2019','Gray','DAM41UDN3CHU2WVF8');
       
SELECT * FROM dim_cars;

SELECT * FROM car_dealership.dim_salespeople;

INSERT INTO dim_salespeople (name , store, staff_id)
VALUES ('Petey Cruiser','Madrid','00001'),
	   ('Anna Sthesia','Barcelona','00002'),
       ('Paul Molive','	Berlin','00003'),
       ('Bob Frapples','Mexico City','00006'),
       ('Paige Turner','Mimia','	00005'),
       ('Walter Melon','Amsterdam','00007'),
       ('Shonda Leer','	São Paulo','00008'),
	   ('Gail Forcewind','Paris','00004');
       
SELECT * FROM dim_salespeople;

SELECT * FROM car_dealership.fact_invoices;

INSERT INTO fact_invoices (invoice_id, date, VIN, customer_id, staff_id)
VALUES ('852399038','2018-08-22','3K096I98581DHSNUP','10001','00003'),
	   ('731166526','2018-12-31','RKXVNNIHLVVZOUB4M','30001','00005'),
       ('271135104','2019-01-22','ZM8G7BEUQZ97IH46V','20001','00007');
       
SELECT * FROM fact_invoices;