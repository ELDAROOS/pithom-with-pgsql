CREATE TABLE Products (
    productid INT PRIMARY KEY,
    productname VARCHAR(100),
    price DECIMAL(10, 2),
    instock BOOLEAN
);
alter table Products
add column bananbek
CREATE TABLE Orders (
    orderid INT PRIMARY KEY,
    customerid INT,
    orderdate DATE,
    totalamount DECIMAL(10, 2)
);

CREATE TABLE Customers (
    customerid INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(11)
);

insert into Products (productid, productname, price, instock) values (1, 'Dodge', '4.57', false);
insert into Products (productid, productname, price, instock) values (2, 'Jeep', '6.58', true);
insert into Products (productid, productname, price, instock) values (3, 'Mercury', '3.66', false);
insert into Products (productid, productname, price, instock) values (4, 'Oldsmobile', '8.73', false);
insert into Products (productid, productname, price, instock) values (5, 'Ford', '3.31', true);
insert into Products (productid, productname, price, instock) values (6, 'Toyota', '5.31', true);
insert into Products (productid, productname, price, instock) values (7, 'GMC', '8.03', false);
insert into Products (productid, productname, price, instock) values (8, 'Scion', '4.11', true);
insert into Products (productid, productname, price, instock) values (9, 'Nissan', '8.67', false);
insert into Products (productid, productname, price, instock) values (10, 'Plymouth', '6.02', true);
insert into Products (productid, productname, price, instock) values (11, 'Pontiac', '5.52', true);
insert into Products (productid, productname, price, instock) values (12, 'Audi', '8.73', true);
insert into Products (productid, productname, price, instock) values (13, 'Jeep', '6.64', true);
insert into Products (productid, productname, price, instock) values (14, 'Subaru', '3.36', false);
insert into Products (productid, productname, price, instock) values (15, 'Toyota', '6.54', false);
insert into Products (productid, productname, price, instock) values (16, 'Suzuki', '3.19', false);
insert into Products (productid, productname, price, instock) values (17, 'Chevrolet', '9.79', true);
insert into Products (productid, productname, price, instock) values (18, 'Chevrolet', '4.62', true);
insert into Products (productid, productname, price, instock) values (19, 'Ford', '6.33', false);
insert into Products (productid, productname, price, instock) values (20, 'Land Rover', '5.91', false);
insert into Products (productid, productname, price, instock) values (21, 'Chevrolet', '5.12', true);
insert into Products (productid, productname, price, instock) values (22, 'Dodge', '2.45', true);
insert into Products (productid, productname, price, instock) values (23, 'Saab', '9.99', true);
insert into Products (productid, productname, price, instock) values (24, 'Chevrolet', '5.07', false);
insert into Products (productid, productname, price, instock) values (25, 'Mitsubishi', '5.23', true);
insert into Products (productid, productname, price, instock) values (26, 'Audi', '9.27', false);
insert into Products (productid, productname, price, instock) values (27, 'Ford', '7.78', true);
insert into Products (productid, productname, price, instock) values (28, 'GMC', '5.08', false);
insert into Products (productid, productname, price, instock) values (29, 'Mitsubishi', '6.75', false);
insert into Products (productid, productname, price, instock) values (30, 'Porsche', '3.21', true);
insert into Products (productid, productname, price, instock) values (31, 'Kia', '7.92', true);
insert into Products (productid, productname, price, instock) values (32, 'Toyota', '7.70', false);
insert into Products (productid, productname, price, instock) values (33, 'Chevrolet', '7.28', true);
insert into Products (productid, productname, price, instock) values (34, 'Ford', '5.97', true);
insert into Products (productid, productname, price, instock) values (35, 'Hyundai', '4.76', true);
insert into Products (productid, productname, price, instock) values (36, 'Subaru', '8.04', true);
insert into Products (productid, productname, price, instock) values (37, 'Ford', '5.27', true);
insert into Products (productid, productname, price, instock) values (38, 'Pontiac', '9.95', false);
insert into Products (productid, productname, price, instock) values (39, 'Toyota', '3.77', true);
insert into Products (productid, productname, price, instock) values (40, 'GMC', '7.86', true);
insert into Products (productid, productname, price, instock) values (41, 'Kia', '8.83', true);
insert into Products (productid, productname, price, instock) values (42, 'Chevrolet', '6.50', false);
insert into Products (productid, productname, price, instock) values (43, 'Ford', '7.20', true);
insert into Products (productid, productname, price, instock) values (44, 'Toyota', '3.50', false);
insert into Products (productid, productname, price, instock) values (45, 'Land Rover', '2.50', true);
insert into Products (productid, productname, price, instock) values (46, 'Chevrolet', '3.94', true);
insert into Products (productid, productname, price, instock) values (47, 'Audi', '7.25', false);
insert into Products (productid, productname, price, instock) values (48, 'Mitsubishi', '3.22', true);
insert into Products (productid, productname, price, instock) values (49, 'Saab', '3.62', true);
insert into Products (productid, productname, price, instock) values (50, 'Chevrolet', '8.62', true);

select * from Products

insert into Orders (orderid, customerid, orderdate, totalamount) values (1, 1, '2023-10-26', 10);
insert into Orders (orderid, customerid, orderdate, totalamount) values (2, 2, '2023-04-05', 8);
insert into Orders (orderid, customerid, orderdate, totalamount) values (3, 3, '2023-01-26', 7);
insert into Orders (orderid, customerid, orderdate, totalamount) values (4, 4, '2023-10-05', 4);
insert into Orders (orderid, customerid, orderdate, totalamount) values (5, 5, '2022-12-23', 7);
insert into Orders (orderid, customerid, orderdate, totalamount) values (6, 6, '2023-10-11', 6);
insert into Orders (orderid, customerid, orderdate, totalamount) values (7, 7, '2023-10-25', 3);
insert into Orders (orderid, customerid, orderdate, totalamount) values (8, 8, '2023-03-10', 10);
insert into Orders (orderid, customerid, orderdate, totalamount) values (9, 9, '2023-02-03', 10);
insert into Orders (orderid, customerid, orderdate, totalamount) values (10, 10, '2023-01-29', 7);
insert into Orders (orderid, customerid, orderdate, totalamount) values (11, 11, '2023-02-09', 8);
insert into Orders (orderid, customerid, orderdate, totalamount) values (12, 12, '2022-11-17', 10);
insert into Orders (orderid, customerid, orderdate, totalamount) values (13, 13, '2023-04-01', 10);
insert into Orders (orderid, customerid, orderdate, totalamount) values (14, 14, '2022-12-20', 7);
insert into Orders (orderid, customerid, orderdate, totalamount) values (15, 15, '2022-11-18', 2);
insert into Orders (orderid, customerid, orderdate, totalamount) values (16, 16, '2022-11-22', 7);
insert into Orders (orderid, customerid, orderdate, totalamount) values (17, 17, '2023-03-02', 4);
insert into Orders (orderid, customerid, orderdate, totalamount) values (18, 18, '2023-08-21', 5);
insert into Orders (orderid, customerid, orderdate, totalamount) values (19, 19, '2023-06-05', 4);
insert into Orders (orderid, customerid, orderdate, totalamount) values (20, 20, '2023-03-04', 6);
insert into Orders (orderid, customerid, orderdate, totalamount) values (21, 21, '2023-03-06', 10);
insert into Orders (orderid, customerid, orderdate, totalamount) values (22, 22, '2023-06-03', 9);
insert into Orders (orderid, customerid, orderdate, totalamount) values (23, 23, '2023-07-19', 4);
insert into Orders (orderid, customerid, orderdate, totalamount) values (24, 24, '2023-01-20', 4);
insert into Orders (orderid, customerid, orderdate, totalamount) values (25, 25, '2023-06-11', 4);
insert into Orders (orderid, customerid, orderdate, totalamount) values (26, 26, '2023-03-04', 3);
insert into Orders (orderid, customerid, orderdate, totalamount) values (27, 27, '2022-12-20', 8);
insert into Orders (orderid, customerid, orderdate, totalamount) values (28, 28, '2023-01-23', 6);
insert into Orders (orderid, customerid, orderdate, totalamount) values (29, 29, '2023-05-05', 4);
insert into Orders (orderid, customerid, orderdate, totalamount) values (30, 30, '2023-10-07', 8);
insert into Orders (orderid, customerid, orderdate, totalamount) values (31, 31, '2023-05-04', 5);
insert into Orders (orderid, customerid, orderdate, totalamount) values (32, 32, '2023-10-05', 4);
insert into Orders (orderid, customerid, orderdate, totalamount) values (33, 33, '2023-06-21', 2);
insert into Orders (orderid, customerid, orderdate, totalamount) values (34, 34, '2023-04-04', 3);
insert into Orders (orderid, customerid, orderdate, totalamount) values (35, 35, '2022-12-07', 10);
insert into Orders (orderid, customerid, orderdate, totalamount) values (36, 36, '2023-10-23', 6);
insert into Orders (orderid, customerid, orderdate, totalamount) values (37, 37, '2023-07-22', 9);
insert into Orders (orderid, customerid, orderdate, totalamount) values (38, 38, '2022-12-20', 10);
insert into Orders (orderid, customerid, orderdate, totalamount) values (39, 39, '2023-08-02', 9);
insert into Orders (orderid, customerid, orderdate, totalamount) values (40, 40, '2023-04-28', 3);
insert into Orders (orderid, customerid, orderdate, totalamount) values (41, 41, '2023-05-11', 3);
insert into Orders (orderid, customerid, orderdate, totalamount) values (42, 42, '2023-10-25', 9);
insert into Orders (orderid, customerid, orderdate, totalamount) values (43, 43, '2023-04-24', 7);
insert into Orders (orderid, customerid, orderdate, totalamount) values (44, 44, '2023-10-29', 2);
insert into Orders (orderid, customerid, orderdate, totalamount) values (45, 45, '2023-08-23', 8);
insert into Orders (orderid, customerid, orderdate, totalamount) values (46, 46, '2023-01-02', 5);
insert into Orders (orderid, customerid, orderdate, totalamount) values (47, 47, '2023-08-21', 3);
insert into Orders (orderid, customerid, orderdate, totalamount) values (48, 48, '2023-10-31', 10);
insert into Orders (orderid, customerid, orderdate, totalamount) values (49, 49, '2023-05-20', 8);
insert into Orders (orderid, customerid, orderdate, totalamount) values (50, 50, '2023-09-21', 10);

select * from orders

insert into Customers (customerid, firstname, lastname, email, phone) values (1, 'Denys', 'Flett', 'dflett0@prweb.com', '1774352638');
insert into Customers (customerid, firstname, lastname, email, phone) values (2, 'Maje', 'Summerlee', 'msummerlee1@unicef.org', '6676458309');
insert into Customers (customerid, firstname, lastname, email, phone) values (3, 'Lavina', 'MacLice', 'lmaclice2@histats.com', '7801686241');
insert into Customers (customerid, firstname, lastname, email, phone) values (4, 'Ciel', 'Oxx', 'coxx3@reuters.com', '7325280683');
insert into Customers (customerid, firstname, lastname, email, phone) values (5, 'Mella', 'Tock', 'mtock4@tripadvisor.com', '2869813895');
insert into Customers (customerid, firstname, lastname, email, phone) values (6, 'Deina', 'Roistone', 'droistone5@ask.com', '4218060655');
insert into Customers (customerid, firstname, lastname, email, phone) values (7, 'Dani', 'Saleway', 'dsaleway6@amazon.de', '1703030222');
insert into Customers (customerid, firstname, lastname, email, phone) values (8, 'Jocelin', 'Sheard', 'jsheard7@prlog.org', '8177782842');
insert into Customers (customerid, firstname, lastname, email, phone) values (9, 'Alina', 'Powdrill', 'apowdrill8@vinaora.com', '5259906983');
insert into Customers (customerid, firstname, lastname, email, phone) values (10, 'Adelle', 'Giacubbo', 'agiacubbo9@miitbeian.gov.cn', '1602670260');
insert into Customers (customerid, firstname, lastname, email, phone) values (11, 'Vitia', 'McIlhatton', 'vmcilhattona@biglobe.ne.jp', '8732908939');
insert into Customers (customerid, firstname, lastname, email, phone) values (12, 'Nikola', 'Dallosso', 'ndallossob@omniture.com', '5672366731');
insert into Customers (customerid, firstname, lastname, email, phone) values (13, 'Zsa zsa', 'Craze', 'zcrazec@wikimedia.org', '2086652437');
insert into Customers (customerid, firstname, lastname, email, phone) values (14, 'Lorrayne', 'Goodlad', 'lgoodladd@fda.gov', '7667201906');
insert into Customers (customerid, firstname, lastname, email, phone) values (15, 'Baxter', 'Worner', 'bwornere@desdev.cn', '1536717388');
insert into Customers (customerid, firstname, lastname, email, phone) values (16, 'Gwenette', 'Tomaszewski', 'gtomaszewskif@canalblog.com', '4125814395');
insert into Customers (customerid, firstname, lastname, email, phone) values (17, 'Jamal', 'Mashro', 'jmashrog@dmoz.org', '8421492428');
insert into Customers (customerid, firstname, lastname, email, phone) values (18, 'Lani', 'Iwaszkiewicz', 'liwaszkiewiczh@abc.net.au', '5378412077');
insert into Customers (customerid, firstname, lastname, email, phone) values (19, 'Chase', 'Yukhnin', 'cyukhnini@shutterfly.com', '5489076935');
insert into Customers (customerid, firstname, lastname, email, phone) values (20, 'Demetra', 'Tuffs', 'dtuffsj@cisco.com', '6123349119');
insert into Customers (customerid, firstname, lastname, email, phone) values (21, 'Etienne', 'Jickells', 'ejickellsk@twitpic.com', '5771512084');
insert into Customers (customerid, firstname, lastname, email, phone) values (22, 'Annette', 'Riatt', 'ariattl@ameblo.jp', '3135159626');
insert into Customers (customerid, firstname, lastname, email, phone) values (23, 'Gordy', 'Fechnie', 'gfechniem@plala.or.jp', '8259951746');
insert into Customers (customerid, firstname, lastname, email, phone) values (24, 'Lyndell', 'Glasbey', 'lglasbeyn@weibo.com', '1418889580');
insert into Customers (customerid, firstname, lastname, email, phone) values (25, 'Rab', 'Cromblehome', 'rcromblehomeo@marriott.com', '5579448054');
insert into Customers (customerid, firstname, lastname, email, phone) values (26, 'Mabel', 'Braunroth', 'mbraunrothp@zimbio.com', '5984364725');
insert into Customers (customerid, firstname, lastname, email, phone) values (27, 'Kevan', 'Ughini', 'kughiniq@g.co', '6367362667');
insert into Customers (customerid, firstname, lastname, email, phone) values (28, 'Clive', 'Rotherham', 'crotherhamr@oracle.com', '6791958107');
insert into Customers (customerid, firstname, lastname, email, phone) values (29, 'Reidar', 'Hackly', 'rhacklys@exblog.jp', '3595957983');
insert into Customers (customerid, firstname, lastname, email, phone) values (30, 'Kelwin', 'Vernon', 'kvernont@dyndns.org', '9395300163');
insert into Customers (customerid, firstname, lastname, email, phone) values (31, 'Alwyn', 'Carwardine', 'acarwardineu@sphinn.com', '9774604569');
insert into Customers (customerid, firstname, lastname, email, phone) values (32, 'Marcellus', 'Wipper', 'mwipperv@yolasite.com', '6922875945');
insert into Customers (customerid, firstname, lastname, email, phone) values (33, 'Ange', 'Rate', 'aratew@newsvine.com', '6212232412');
insert into Customers (customerid, firstname, lastname, email, phone) values (34, 'Frederich', 'Ailward', 'failwardx@weebly.com', '7768507585');
insert into Customers (customerid, firstname, lastname, email, phone) values (35, 'Meir', 'Alkin', 'malkiny@abc.net.au', '4068282309');
insert into Customers (customerid, firstname, lastname, email, phone) values (36, 'Orsa', 'Luckcock', 'oluckcockz@google.com.hk', '2848330534');
insert into Customers (customerid, firstname, lastname, email, phone) values (37, 'Randy', 'Geare', 'rgeare10@dagondesign.com', '5859861510');
insert into Customers (customerid, firstname, lastname, email, phone) values (38, 'Hynda', 'Tidbold', 'htidbold11@whitehouse.gov', '2919940828');
insert into Customers (customerid, firstname, lastname, email, phone) values (39, 'Ingaborg', 'Doble', 'idoble12@yandex.ru', '8425982070');
insert into Customers (customerid, firstname, lastname, email, phone) values (40, 'Wyatan', 'Archanbault', 'warchanbault13@exblog.jp', '7976719798');
insert into Customers (customerid, firstname, lastname, email, phone) values (41, 'Aland', 'Gingel', 'agingel14@adobe.com', '9474638412');
insert into Customers (customerid, firstname, lastname, email, phone) values (42, 'Carla', 'Middup', 'cmiddup15@vk.com', '9944266169');
insert into Customers (customerid, firstname, lastname, email, phone) values (43, 'Layton', 'Soda', 'lsoda16@wikispaces.com', '4752929574');
insert into Customers (customerid, firstname, lastname, email, phone) values (44, 'Mirabelle', 'Cloake', 'mcloake17@digg.com', '6255935198');
insert into Customers (customerid, firstname, lastname, email, phone) values (45, 'Albertine', 'Bruckmann', 'abruckmann18@etsy.com', '4428224737');
insert into Customers (customerid, firstname, lastname, email, phone) values (46, 'Deonne', 'Johannesson', 'djohannesson19@goodreads.com', '5505088899');
insert into Customers (customerid, firstname, lastname, email, phone) values (47, 'Abbie', 'Winney', 'awinney1a@exblog.jp', '1997187680');
insert into Customers (customerid, firstname, lastname, email, phone) values (48, 'Horatia', 'Masic', 'hmasic1b@quantcast.com', '9871404008');
insert into Customers (customerid, firstname, lastname, email, phone) values (49, 'Aluino', 'Pinson', 'apinson1c@sciencedirect.com', '4473050679');
insert into Customers (customerid, firstname, lastname, email, phone) values (50, 'Virgina', 'Crow', 'vcrow1d@cyberchimps.com', '8976862966');

select * from customers


select avg(price), sum(price)
from Products