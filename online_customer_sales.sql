#Online Customer Sales Case Study
create database shop;
use shop;

create table customer(customer_id int primary key, full_name varchar(40), city varchar(20),
state varchar(25), signup_date date);
describe customer;

INSERT INTO Customer VALUES
(1, 'James Carter', 'Chicago', 'Illinois', '2025-01-05'),
(2, 'Emily Johnson', 'Columbus', 'Ohio', '2025-02-10'),
(3, 'Michael Williams', 'Dallas', 'Texas', '2025-01-10'),
(4, 'Sarah Brown', 'Denver', 'Colorado', '2025-01-25'),
(5, 'David Jones', 'Phoenix', 'Arizona', '2025-02-11'),
(6, 'Jessica Garcia', 'San Diego', 'California', '2025-01-27'),
(7, 'Christopher Miller', 'Seattle', 'Washington', '2025-01-17'),
(8, 'Ashley Davis', 'Atlanta', 'Georgia', '2025-02-13'),
(9, 'Matthew Wilson', 'Boston', 'Massachusetts', '2025-03-15'),
(10, 'Amanda Moore', 'Charlotte', 'North Carolina', '2025-01-29'),
(11, 'Daniel Taylor', 'Nashville', 'Tennessee', '2025-03-18'),
(12, 'Megan Anderson', 'Austin', 'Texas', '2025-02-03'),
(13, 'Joshua Thomas', 'Portland', 'Oregon', '2025-01-10'),
(14, 'Lauren Jackson', 'Miami', 'Florida', '2025-02-14'),
(15, 'Andrew White', 'Detroit', 'Michigan', '2025-03-02'),
(16, 'Samantha Harris', 'Cleveland', 'Ohio', '2025-06-22'),
(17, 'Ryan Martin', 'Indianapolis', 'Indiana', '2025-02-14'),
(18, 'Rachel Thompson', 'Minneapolis', 'Minnesota', '2025-03-21'),
(19, 'Brandon Garcia', 'Tampa', 'Florida', '2025-02-18'),
(20, 'Nicole Martinez', 'Las Vegas', 'Nevada', '2025-03-02'),
(21, 'Tyler Robinson', 'Salt Lake City', 'Utah', '2025-01-20'),
(22, 'Stephanie Clark', 'Pittsburgh', 'Pennsylvania', '2025-03-03'),
(23, 'Kevin Rodriguez', 'San Antonio', 'Texas', '2025-02-28'),
(24, 'Olivia Lewis', 'Philadelphia', 'Pennsylvania', '2025-03-23'),
(25, 'Jason Lee', 'Los Angeles', 'California', '2025-03-09'),
(26, 'Hannah Walker', 'Cincinnati', 'Ohio', '2025-02-25'),
(27, 'Justin Hall', 'Kansas City', 'Missouri', '2025-03-27'),
(28, 'Elizabeth Allen', 'St. Louis', 'Missouri', '2025-03-15'),
(29, 'Ethan Young', 'Raleigh', 'North Carolina', '2025-03-17'),
(30, 'Madison Hernandez', 'Sacramento', 'California', '2025-03-29'),
(31, 'Nathan King', 'Omaha', 'Nebraska', '2025-01-15'),
(32, 'Grace Wright', 'Milwaukee', 'Wisconsin', '2025-04-01'),
(33, 'Jacob Lopez', 'Houston', 'Texas', '2025-03-25'),
(34, 'Chloe Hill', 'New Orleans', 'Louisiana', '2025-03-14'),
(35, 'Nicholas Scott', 'Jacksonville', 'Florida', '2025-09-01'),
(36, 'Victoria Green', 'San Francisco', 'California', '2025-04-04'),
(37, 'Anthony Adams', 'Richmond', 'Virginia', '2025-02-18'),
(38, 'Natalie Baker', 'Boise', 'Idaho', '2025-04-07'),
(39, 'Jonathan Gonzalez', 'Albuquerque', 'New Mexico', '2025-04-09'),
(40, 'Brianna Nelson', 'Oklahoma City', 'Oklahoma', '2025-04-10'),
(41, 'Dylan Carter', 'Buffalo', 'New York', '2025-04-07'),
(42, 'Kayla Mitchell', 'Baltimore', 'Maryland', '2025-04-08'),
(43, 'Alexander Perez', 'Tucson', 'Arizona', '2025-02-11'),
(44, 'Sophia Roberts', 'Providence', 'Rhode Island', '2025-01-08'),
(45, 'Connor Turner', 'Madison', 'Wisconsin', '2025-04-13'),
(46, 'Avery Phillips', 'Honolulu', 'Hawaii', '2025-10-09'),
(47, 'Cameron Campbell', 'Anchorage', 'Alaska', '2025-03-30'),
(48, 'Morgan Parker', 'Des Moines', 'Iowa', '2025-04-17'),
(49, 'Logan Evans', 'Little Rock', 'Arkansas', '2025-04-19'),
(50, 'Taylor Edwards', 'Richmond', 'Virginia', '2025-04-20');

select * from customer;

create table Products(product_id int primary key, product_name varchar(100), category varchar(30),
price decimal(10,2), cost_price decimal(10,2));
describe Products;

INSERT INTO Products VALUES
(1,'Samsung Galaxy M12','Electronics',139.99,105.00),
(2,'iPhone 11 Case','Accessories',9.99,3.50),
(3,'JBL Wireless Earbuds','Electronics',39.99,22.00),
(4,'HP Wireless Mouse','Electronics',14.99,8.00),
(5,'Lenovo Laptop Bag','Accessories',24.99,12.00),

(6,'Nike Running Shoes','Fashion',79.99,45.00),
(7,'Levi’s Jeans','Fashion',59.99,30.00),
(8,'Puma T-shirt','Fashion',29.99,12.00),
(9,'Women Handbag','Fashion',49.99,25.00),
(10,'Winter Jacket','Fashion',89.99,50.00),

(11,'Steel Water Bottle','Home',19.99,6.00),
(12,'Dinner Plate Set','Home',34.99,17.00),
(13,'Table Lamp','Home',19.99,7.50),
(14,'Wall Clock','Home',14.99,5.00),
(15,'Pillow Set','Home',24.99,9.00),

(16,'Face Wash','Beauty',8.99,3.00),
(17,'Shampoo','Beauty',11.99,4.50),
(18,'Perfume','Beauty',39.99,18.00),
(19,'Hair Dryer','Beauty',29.99,15.00),
(20,'Body Lotion','Beauty',9.99,4.00),

(21,'Football','Sports',24.99,10.00),
(22,'Cricket Bat','Sports',49.99,25.00),
(23,'Skipping Rope','Sports',12.99,4.50),
(24,'Yoga Mat','Sports',24.99,8.00),
(25,'Badminton Racket','Sports',34.99,14.00);

select * from Products;

create table Orders(order_id int primary key, customer_id int, order_date date,
order_status varchar(70),
foreign key (customer_id) references customer(customer_id));

describe orders;

create table Orderitems(order_item_id int primary key, 
order_id int,
product_id int, 
quantity int, 
unit_price decimal(10,2),
discount decimal(10,2),
foreign key (order_id) references Orders(order_id),
foreign key (product_id) references Products(product_id));

describe Orderitems;

INSERT INTO Orders VALUES
(1, 12, '2025-02-10', 'Delivered'),
(2, 3, '2025-01-17', 'Delivered'),
(3, 25, '2025-03-16', 'Cancelled'),
(4, 7, '2025-01-24', 'Delivered'),
(5, 14, '2025-02-14', 'Returned'),

(6, 19, '2025-02-25', 'Delivered'),
(7, 21, '2025-03-08', 'Delivered'),
(8, 33, '2025-04-01', 'Delivered'),
(9, 45, '2025-04-20', 'Delivered'),
(10, 17, '2025-02-21', 'Cancelled'),

(11, 4, '2025-02-01', 'Delivered'),
(12, 6, '2025-02-03', 'Returned'),
(13, 10, '2025-02-05', 'Delivered'),
(14, 41, '2025-04-14', 'Delivered'),
(15, 28, '2025-03-22', 'Delivered'),

(16, 49, '2025-04-26', 'Returned'),
(17, 50, '2025-04-27', 'Delivered'),
(18, 29, '2025-03-24', 'Returned'),
(19, 5, '2025-02-18', 'Cancelled'),
(20, 8, '2025-02-20', 'Delivered'),

(21, 22, '2025-03-10', 'Delivered'),
(22, 13, '2025-03-03', 'Delivered'),
(23, 42, '2025-04-15', 'Delivered'),
(24, 23, '2025-03-07', 'Cancelled'),
(25, 15, '2025-03-09', 'Delivered'),

(26, 1, '2025-03-11', 'Delivered'),
(27, 2, '2025-03-13', 'Returned'),
(28, 3, '2025-03-15', 'Delivered'),
(29, 4, '2025-03-17', 'Delivered'),
(30, 6, '2025-03-18', 'Delivered'),

(31, 7, '2025-03-20', 'Returned'),
(32, 9, '2025-03-22', 'Delivered'),
(33, 11, '2025-03-25', 'Returned'),
(34, 12, '2025-03-26', 'Delivered'),
(35, 18, '2025-03-28', 'Delivered'),

(36, 20, '2025-03-29', 'Delivered'),
(37, 24, '2025-03-30', 'Cancelled'),
(38, 26, '2025-04-01', 'Delivered'),
(39, 27, '2025-04-03', 'Delivered'),
(40, 30, '2025-04-05', 'Delivered'),

(41, 31, '2025-04-07', 'Delivered'),
(42, 32, '2025-04-08', 'Delivered'),
(43, 34, '2025-04-10', 'Cancelled'),
(44, 36, '2025-04-11', 'Delivered'),
(45, 37, '2025-04-13', 'Returned'),

(46, 38, '2025-04-14', 'Delivered'),
(47, 39, '2025-04-16', 'Returned'),
(48, 40, '2025-04-17', 'Returned'),
(49, 43, '2025-04-19', 'Delivered'),
(50, 44, '2025-04-20', 'Delivered');

select * from Orders;

INSERT INTO Orders VALUES
(51, 45, '2025-04-22', 'Delivered'),
(52, 46, '2025-04-23', 'Delivered'),
(53, 47, '2025-04-25', 'Cancelled'),
(54, 48, '2025-04-27', 'Delivered'),
(55, 49, '2025-04-28', 'Delivered'),

(56, 50, '2025-04-30', 'Delivered'),
(57, 1, '2025-05-02', 'Delivered'),
(58, 2, '2025-05-04', 'Delivered'),
(59, 3, '2025-05-06', 'Returned'),
(60, 5, '2025-05-07', 'Delivered'),

(61, 6, '2025-05-09', 'Delivered'),
(62, 7, '2025-05-10', 'Delivered'),
(63, 8, '2025-05-12', 'Cancelled'),
(64, 9, '2025-05-13', 'Delivered'),
(65, 10, '2025-05-14', 'Returned'),

(66, 11, '2025-05-16', 'Delivered'),
(67, 12, '2025-05-18', 'Delivered'),
(68, 13, '2025-05-20', 'Delivered'),
(69, 14, '2025-05-22', 'Delivered'),
(70, 15, '2025-05-24', 'Delivered'),

(71, 16, '2025-05-25', 'Cancelled'),
(72, 17, '2025-05-27', 'Delivered'),
(73, 18, '2025-05-29', 'Delivered'),
(74, 19, '2025-06-01', 'Delivered'),
(75, 20, '2025-06-03', 'Delivered'),

(76, 21, '2025-06-04', 'Delivered'),
(77, 22, '2025-06-06', 'Cancelled'),
(78, 23, '2025-06-08', 'Delivered'),
(79, 24, '2025-06-10', 'Delivered'),
(80, 25, '2025-06-12', 'Delivered'),

(81, 26, '2025-06-13', 'Delivered'),
(82, 27, '2025-06-14', 'Delivered'),
(83, 28, '2025-06-16', 'Delivered'),
(84, 29, '2025-06-18', 'Returned'),
(85, 30, '2025-06-19', 'Delivered'),

(86, 31, '2025-06-21', 'Delivered'),
(87, 32, '2025-06-22', 'Cancelled'),
(88, 33, '2025-06-24', 'Delivered'),
(89, 34, '2025-06-26', 'Delivered'),
(90, 35, '2025-06-27', 'Delivered'),

(91, 36, '2025-06-29', 'Returned'),
(92, 37, '2025-07-01', 'Delivered'),
(93, 38, '2025-07-02', 'Delivered'),
(94, 39, '2025-07-04', 'Delivered'),
(95, 40, '2025-07-05', 'Delivered'),

(96, 41, '2025-07-07', 'Delivered'),
(97, 42, '2025-07-08', 'Cancelled'),
(98, 43, '2025-07-09', 'Delivered'),
(99, 44, '2025-07-11', 'Delivered'),
(100, 45, '2025-07-12', 'Delivered');

select * from Orders;

INSERT INTO Orders VALUES
(101, 46, '2025-07-14', 'Delivered'),
(102, 47, '2025-07-15', 'Delivered'),
(103, 48, '2025-07-17', 'Returned'),
(104, 49, '2025-07-18', 'Delivered'),
(105, 50, '2025-07-20', 'Delivered'),

(106, 1, '2025-07-22', 'Delivered'),
(107, 2, '2025-07-24', 'Cancelled'),
(108, 3, '2025-07-25', 'Delivered'),
(109, 4, '2025-07-27', 'Delivered'),
(110, 5, '2025-07-28', 'Delivered'),

(111, 6, '2025-07-30', 'Delivered'),
(112, 7, '2025-08-01', 'Delivered'),
(113, 8, '2025-08-03', 'Returned'),
(114, 9, '2025-08-04', 'Delivered'),
(115, 10, '2025-08-05', 'Delivered'),

(116, 11, '2025-08-07', 'Cancelled'),
(117, 12, '2025-08-09', 'Delivered'),
(118, 13, '2025-08-10', 'Delivered'),
(119, 14, '2025-08-12', 'Delivered'),
(120, 15, '2025-08-13', 'Delivered'),

(121, 16, '2025-08-15', 'Delivered'),
(122, 17, '2025-08-16', 'Delivered'),
(123, 18, '2025-08-18', 'Returned'),
(124, 19, '2025-08-19', 'Delivered'),
(125, 20, '2025-08-21', 'Delivered'),

(126, 21, '2025-08-22', 'Delivered'),
(127, 22, '2025-08-24', 'Cancelled'),
(128, 23, '2025-08-25', 'Delivered'),
(129, 24, '2025-08-27', 'Delivered'),
(130, 25, '2025-08-29', 'Delivered'),

(131, 26, '2025-09-01', 'Delivered'),
(132, 27, '2025-09-02', 'Delivered'),
(133, 28, '2025-09-03', 'Delivered'),
(134, 29, '2025-09-05', 'Cancelled'),
(135, 30, '2025-09-06', 'Delivered'),

(136, 31, '2025-09-08', 'Delivered'),
(137, 32, '2025-09-09', 'Delivered'),
(138, 33, '2025-09-11', 'Returned'),
(139, 34, '2025-09-12', 'Delivered'),
(140, 35, '2025-09-14', 'Delivered'),

(141, 36, '2025-09-15', 'Delivered'),
(142, 37, '2025-09-17', 'Delivered'),
(143, 38, '2025-09-18', 'Delivered'),
(144, 39, '2025-09-19', 'Delivered'),
(145, 40, '2025-09-21', 'Delivered'),

(146, 41, '2025-09-23', 'Returned'),
(147, 42, '2025-09-24', 'Delivered'),
(148, 43, '2025-09-26', 'Delivered'),
(149, 44, '2025-09-27', 'Cancelled'),
(150, 45, '2025-09-29', 'Delivered');

select * from Orders;

INSERT INTO OrderItems VALUES
(1, 1, 1, 1, 139.99, 0.00),
(2, 1, 4, 2, 14.99, 2.00),
(3, 2, 3, 1, 39.99, 10.00),
(4, 2, 5, 1, 24.99, 0.00),
(5, 3, 2, 1, 9.99, 9.98),
(6, 3, 6, 3, 79.99, 1.00),
(7, 4, 7, 1, 59.99, 5.00),
(8, 4, 10, 2, 89.99, 0.00),
(9, 5, 8, 1, 29.99, 3.00),
(10, 5, 15, 2, 24.99, 0.00),
(11, 6, 12, 1, 34.99, 20.00),
(12, 6, 16, 1, 8.99, 0.00),
(13, 7, 9, 1, 49.99, 15.00),
(14, 7, 14, 2, 14.99, 0.00),
(15, 8, 11, 1, 19.99, 8.00),
(16, 8, 19, 1, 29.99, 0.00),
(17, 9, 13, 2, 19.99, 0.00),
(18, 9, 20, 1, 9.99, 1.00),
(19, 10, 17, 1, 11.99, 5.00),
(20, 10, 25, 1, 34.99, 0.00),
(21, 11, 18, 1, 39.99, 20.00),
(22, 11, 22, 2, 49.99, 1.00),
(23, 12, 21, 1, 24.99, 10.00),
(24, 12, 24, 1, 24.99, 0.00),
(25, 13, 23, 1, 12.99, 0.00),
(26, 13, 2, 1, 9.99, 9.98),
(27, 14, 6, 4, 79.99, 0.00),
(28, 14, 5, 1, 24.99, 3.00),
(29, 15, 1, 1, 139.99, 25.00),
(30, 15, 9, 1, 49.99, 10.00),
(31, 16, 7, 1, 59.99, 0.00),
(32, 16, 10, 1, 89.99, 2.00),
(33, 17, 12, 1, 34.99, 15.00),
(34, 17, 14, 3, 14.99, 0.00),
(35, 18, 3, 1, 39.99, 0.00),
(36, 18, 11, 1, 19.99, 5.00),
(37, 19, 13, 1, 19.99, 0.00),
(38, 19, 18, 1, 39.99, 25.00),
(39, 20, 21, 1, 24.99, 10.00),
(40, 20, 25, 1, 34.99, 0.00);

select * from Orderitems;

INSERT INTO OrderItems VALUES
(41, 21, 2, 1, 9.99, 40.00),
(42, 21, 6, 2, 79.99, 0),
(43, 22, 7, 1, 59.99, 5.00),
(44, 22, 10, 1, 89.99, 2.00),
(45, 23, 8, 1, 29.99, 3.00),

(46, 23, 15, 2, 24.99, 0),
(47, 24, 11, 1, 19.99, 12.00),
(48, 24, 19, 1, 29.99, 0),
(49, 25, 13, 1, 19.99, 0),
(50, 25, 20, 1, 9.99, 1.00),

(51, 26, 17, 1, 11.99, 0),
(52, 26, 25, 1, 34.99, 0),
(53, 27, 18, 1, 39.99, 18.00),
(54, 27, 22, 3, 49.99, 2.00),
(55, 28, 21, 1, 24.99, 5.00),

(56, 28, 24, 2, 24.99, 0),
(57, 29, 23, 1, 12.99, 0),
(58, 29, 1, 1, 139.99, 20.00),
(59, 30, 3, 1, 39.99, 10.00),
(60, 30, 5, 1, 24.99, 0),

(61, 31, 12, 1, 34.99, 15.00),
(62, 31, 14, 1, 14.99, 0),
(63, 32, 9, 1, 49.99, 8.00),
(64, 32, 16, 1, 8.99, 0),
(65, 33, 7, 1, 59.99, 5.00),

(66, 33, 10, 2, 89.99, 2.00),
(67, 34, 6, 3, 79.99, 0),
(68, 34, 15, 2, 24.99, 1.00),
(69, 35, 2, 1, 9.99, 50.00),
(70, 35, 11, 1, 19.99, 0),

(71, 36, 8, 1, 29.99, 0),
(72, 36, 19, 1, 29.99, 0),
(73, 37, 13, 1, 19.99, 0),
(74, 37, 20, 1, 9.99, 0),
(75, 38, 17, 1, 11.99, 5.00),

(76, 38, 24, 1, 24.99, 0),
(77, 39, 21, 1, 24.99, 12.00),
(78, 39, 22, 2, 49.99, 0),
(79, 40, 23, 1, 12.99, 0),
(80, 40, 9, 1, 49.99, 10.00);

select * from Orderitems;

INSERT INTO OrderItems VALUES
(81, 41, 1, 1, 139.99, 10.00),
(82, 41, 14, 2, 14.99, 0),
(83, 42, 2, 1, 9.99, 80.00),
(84, 42, 6, 3, 79.99, 0),
(85, 43, 7, 1, 59.99, 0),

(86, 43, 10, 1, 89.99, 3.00),
(87, 44, 12, 1, 34.99, 20.00),
(88, 44, 19, 1, 29.99, 0),
(89, 45, 8, 1, 29.99, 2.00),
(90, 45, 15, 2, 24.99, 0),

(91, 46, 11, 1, 19.99, 5.00),
(92, 46, 20, 1, 9.99, 1.00),
(93, 47, 18, 1, 39.99, 15.00),
(94, 47, 22, 2, 49.99, 0),
(95, 48, 21, 1, 24.99, 12.00),

(96, 48, 24, 1, 24.99, 0),
(97, 49, 23, 1, 12.99, 0),
(98, 49, 3, 1, 39.99, 10.00),
(99, 50, 17, 1, 11.99, 0),
(100, 50, 25, 1, 34.99, 1.00),

(101, 51, 9, 1, 49.99, 10.00),
(102, 51, 14, 2, 14.99, 0),
(103, 52, 7, 1, 59.99, 5.00),
(104, 52, 10, 1, 89.99, 0),
(105, 53, 12, 1, 34.99, 15.00),

(106, 53, 16, 1, 8.99, 0),
(107, 54, 8, 1, 29.99, 3.00),
(108, 54, 15, 1, 24.99, 0),
(109, 55, 2, 1, 9.99, 60.00),
(110, 55, 11, 1, 19.99, 5.00),

(111, 56, 13, 1, 19.99, 0),
(112, 56, 24, 2, 24.99, 0),
(113, 57, 3, 1, 39.99, 0),
(114, 57, 19, 1, 29.99, 0),
(115, 58, 1, 1, 139.99, 5.00),

(116, 58, 20, 1, 9.99, 1.00),
(117, 59, 18, 1, 39.99, 25.00),
(118, 59, 22, 3, 49.99, 2.00),
(119, 60, 21, 1, 24.99, 10.00),
(120, 60, 16, 1, 8.99, 0);

select * from Orderitems;

INSERT INTO OrderItems VALUES
(121, 61, 7, 1, 59.99, 5.00),
(122, 61, 10, 1, 89.99, 2.00),
(123, 62, 12, 1, 34.99, 20.00),
(124, 62, 14, 2, 14.99, 0),
(125, 63, 9, 1, 49.99, 8.00),

(126, 63, 16, 1, 8.99, 0),
(127, 64, 3, 1, 39.99, 10.00),
(128, 64, 15, 1, 24.99, 0),
(129, 65, 2, 1, 9.99, 70.00),
(130, 65, 11, 1, 19.99, 0),

(131, 66, 8, 1, 29.99, 0),
(132, 66, 24, 1, 24.99, 0),
(133, 67, 18, 1, 39.99, 18.00),
(134, 67, 22, 2, 49.99, 1.00),
(135, 68, 21, 1, 24.99, 5.00),

(136, 68, 19, 1, 29.99, 0),
(137, 69, 1, 1, 139.99, 25.00),
(138, 69, 14, 2, 14.99, 0),
(139, 70, 6, 3, 79.99, 0),
(140, 70, 23, 1, 12.99, 1.00),

(141, 71, 7, 1, 59.99, 0),
(142, 71, 16, 1, 8.99, 0),
(143, 72, 3, 1, 39.99, 0),
(144, 72, 20, 1, 9.99, 0),
(145, 73, 8, 1, 29.99, 2.00),

(146, 73, 24, 2, 24.99, 0),
(147, 74, 11, 1, 19.99, 15.00),
(148, 74, 22, 2, 49.99, 0),
(149, 75, 2, 1, 9.99, 50.00),
(150, 75, 14, 2, 14.99, 0),

(151, 76, 17, 1, 11.99, 5.00),
(152, 76, 25, 1, 34.99, 0),
(153, 77, 7, 1, 59.99, 5.00),
(154, 77, 19, 1, 29.99, 0),
(155, 78, 12, 1, 34.99, 20.00),

(156, 78, 23, 1, 12.99, 0),
(157, 79, 18, 1, 39.99, 25.00),
(158, 79, 16, 1, 8.99, 0),
(159, 80, 3, 1, 39.99, 10.00),
(160, 80, 10, 1, 89.99, 0);

select * from Orderitems;

Create table Returns(return_id int primary key, order_id int, return_date date, reason varchar(90),
foreign key (order_id) references Orders(order_id));

INSERT INTO Returns (return_id, order_id, return_date, reason)
VALUES
(1, 5, '2025-02-21', 'Damaged product'),
(2, 12, '2025-02-10', 'Wrong size'),
(3, 18, '2025-03-31', 'Late delivery'),
(4, 27, '2025-03-20', 'Defective item'),
(5, 33, '2025-04-01', 'Quality not as expected'),
(6, 45, '2025-04-20', 'Changed mind'),
(7, 16, '2025-05-03', 'Product not as described'),
(8, 31, '2025-03-27', 'Wrong item delivered'),
(9, 47, '2025-04-23', 'Packaging damaged'),
(10, 48, '2025-04-24', 'Received late');

select * from Returns;

use shop;

#Problems
#Customer & Sales Analysis

#List the names of all customers who placed at least one order.
Select c.full_name from customer c join Orders o 
on c.customer_id=o.customer_id group by c.customer_id, c.full_name;

#Find the total number of orders placed in January 2025.
select count(order_id)"Total no of order" from orders where order_date >= '2025-01-01' and order_date < '2025-02-01';

#Display product name and price for all products priced above $50.
select product_name, price from products where price>50;

#Show the total quantity sold for each product.
select product_id, sum(quantity)"Total quantity" from orderitems group by product_id;

#Retrieve the top 5 products by number of times they appear in OrderItems.
SELECT p.product_name,
       COUNT(oi.order_item_id) AS total_times_ordered
FROM OrderItems oi
JOIN Products p
    ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_times_ordered DESC
LIMIT 5;

#Find the monthly revenue for May 2025 by summing (quantity × unit_price – discount) for all orders.
select sum(oi.quantity*oi.unit_price - oi.discount) As monthly_revenue
FROM orders o join orderitems oi ON o.order_id = oi.order_id
where o.order_status NOT IN ('Cancelled', 'Returned')
and o.order_date >= '2025-05-01' and o.order_date < '2025-06-01';

#Show the list of customers who have placed more than 3 orders.
select c.full_name, count(o.order_id) As total_orders
FROM customer c join orders o ON c.customer_id = o.customer_id
Group by c.customer_id, c.full_name
Having count(o.order_id)>3
ORDER BY total_orders DESC; 

#Insert a new product entry and immediately verify if it appears in the Products table.
insert into products values(26,'Thermas','utensils',49.99,22.00);
select * from products;

#Update the status of all orders older than 6 months to “Archived”.
set sql_safe_updates = 0;

UPDATE Orders
SET order_status = 'Archived'
WHERE order_date < DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

set sql_safe_updates = 1;

select * from orders;

#Create a view named top_categories_2025 that shows the top 3 product categories by revenue in 2025.
CREATE VIEW top_categories_2025 AS
SELECT 
    p.category AS category_name,
    SUM(oi.quantity * oi.unit_price - oi.discount) AS total_revenue
FROM Orders o
JOIN OrderItems oi 
    ON o.order_id = oi.order_id
JOIN Products p 
    ON oi.product_id = p.product_id
WHERE o.order_status NOT IN ('Cancelled', 'Returned')
  AND YEAR(o.order_date) = 2025
GROUP BY p.category
ORDER BY total_revenue DESC
LIMIT 3;

SELECT * FROM top_categories_2025;

#Identify the top 10 customers by lifetime spending and compute each customer’s percentage contribution to total revenue.
WITH customer_spend AS (
    SELECT 
        c.customer_id,
        c.full_name,
        SUM(oi.quantity * oi.unit_price - oi.discount) AS total_spent
    FROM customer c
    JOIN Orders o
        ON c.customer_id = o.customer_id
    JOIN OrderItems oi
        ON o.order_id = oi.order_id
    WHERE o.order_status NOT IN ('Cancelled', 'Returned')
    GROUP BY c.customer_id, c.full_name
),
total_revenue AS (
    SELECT SUM(total_spent) AS grand_total
    FROM customer_spend
)
SELECT 
    cs.full_name,
    cs.total_spent,
    ROUND((cs.total_spent / tr.grand_total) * 100, 2) AS contribution_percentage
FROM customer_spend cs
CROSS JOIN total_revenue tr
ORDER BY cs.total_spent DESC
LIMIT 10;

#Create a summary table daily_summary_sales and insert aggregated revenue for each day from the Orders and OrderItems tables.
create table daily_summary_sales(summary_date date,
total_revenue decimal(12, 2),
total_orders int,
primary key (summary_date));

select * from daily_summary_sales;

INSERT INTO daily_summary_sales (summary_date, total_revenue, total_orders)
SELECT 
    DATE(o.order_date) AS summary_date,
    SUM(oi.quantity * oi.unit_price - oi.discount) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM Orders o
JOIN OrderItems oi 
    ON o.order_id = oi.order_id
WHERE o.order_status NOT IN ('Cancelled', 'Returned')
GROUP BY DATE(o.order_date);

#Add a new column profit_margin to OrderItems and populate it using unit_price, discount, and product cost (from Products).
alter table orderitems
add column profit_margin decimal(10,4);

select * from orderitems;

update orderitems oi
join products p on oi.product_id=p.product_id
set oi.profit_margin = 
Round(
        ((oi.unit_price * oi.quantity) - oi.discount - (p.cost_price * oi.quantity))
        / (oi.unit_price * oi.quantity),
        4
    );

#Create an index on Orders(order_date) and show query improvement using EXPLAIN for a monthly sales report.
CREATE INDEX idx_orders_order_date 
ON Orders(order_date);

EXPLAIN
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    COUNT(*) AS total_orders
FROM Orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m');

#Find products whose return rate is higher than the overall average return rate, using window functions or category-wise comparison.
WITH product_stats AS (
    SELECT 
        p.product_id,
        p.product_name,
        COUNT(DISTINCT oi.order_id) AS total_orders,
        COUNT(DISTINCT r.order_id) AS returned_orders,
        (COUNT(DISTINCT r.order_id) / COUNT(DISTINCT oi.order_id)) AS return_rate
    FROM Products p
    JOIN OrderItems oi 
        ON p.product_id = oi.product_id
    JOIN Orders o 
        ON oi.order_id = o.order_id
    LEFT JOIN Returns r
        ON o.order_id = r.order_id
    GROUP BY p.product_id, p.product_name
),
avg_rate AS (
    SELECT AVG(return_rate) AS avg_return_rate
    FROM product_stats
)
SELECT 
    ps.product_name,
    ps.total_orders,
    ps.returned_orders,
    ROUND(ps.return_rate * 100, 2) AS return_rate_pct
FROM product_stats ps
JOIN avg_rate ar
WHERE ps.return_rate > ar.avg_return_rate
ORDER BY ps.return_rate DESC;





 




