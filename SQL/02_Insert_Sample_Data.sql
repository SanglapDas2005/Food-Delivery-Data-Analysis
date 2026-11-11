-- Inserting data into customer table
INSERT INTO customers VALUES
(1, 'Sanglap Das', 'Kolkata', '9876543210'),
(2, 'Amit Das', 'Kharagpur', '9876543211'),
(3, 'Priya Roy', 'Kolaghat', '9876543212'),
(4, 'Sneha Ghosh', 'Kolkata', '9876543213'),
(5, 'Arnab jana', 'Bagnan', '9876543214'),
(6, 'Riya Sen', 'Haldia', '9876543215'),
(7, 'Sourav Dey', 'Kolkata', '9876543216'),
(8, 'Neha Sen', 'Kharagpur', '9876543217');

-- Inserting data into resturent table
INSERT INTO restaurants VALUES
(101, 'Alpino', 'Kolkata', 4.5),
(102, 'Foodie Island', 'Haldia', 4.2),
(103, 'Orchid', 'Kolaghat', 4.7),
(104, 'Bong Pizza', 'Bagnan', 4.0);

-- Inserting data into food items table
INSERT INTO food_items VALUES
(201, 'Chicken Biryani', 'Main Course', 250, 101),
(202, 'Veg Biryani', 'Main Course', 180, 101),
(203, 'Chicken Roll', 'Fast Food', 120, 101),
(204, 'Butter Chicken', 'Main Course', 300, 102),
(205, 'Paneer Tikka', 'Starter', 220, 102),
(206, 'Pizza', 'Fast Food', 350, 103),
(207, 'Garlic Bread', 'Starter', 150, 103),
(208, 'Cheese Burger', 'Fast Food', 180, 104),
(209, 'French Fries', 'Starter', 100, 104),
(210, 'Cold Coffee', 'Beverage', 120, 104),
(211, 'Chicken Pizza', 'Fast Food', 400, 103),
(212, 'Mutton Biryani', 'Main Course', 320, 101);

-- Inserting data into delivery partners table
INSERT INTO delivery_partners VALUES
(301, 'Rakesh Kumar', 'Kolkata'),
(302, 'Aman Verma', 'Haldia'),
(303, 'Suman Roy', 'Kolaghat'),
(304, 'Rahul Das', 'Bangalore');

-- Inserting data into orders table
INSERT INTO orders VALUES
(1001, 1, 101, 301, '2026-01-05', 'Delivered'),
(1002, 2, 102, 302, '2026-01-10', 'Delivered'),
(1003, 3, 103, 303, '2026-01-15', 'Cancelled'),
(1004, 4, 101, 301, '2026-02-02', 'Delivered'),
(1005, 5, 104, 304, '2026-02-12', 'Delivered'),
(1006, 1, 103, 303, '2026-02-20', 'Delivered'),
(1007, 6, 102, 302, '2026-03-05', 'Pending'),
(1008, 7, 101, 301, '2026-03-10', 'Delivered'),
(1009, 8, 103, 303, '2026-03-15', 'Delivered'),
(1010, 2, 104, 304, '2026-03-20', 'Delivered'),
(1011, 3, 102, 302, '2026-04-01', 'Delivered'),
(1012, 5, 104, 304, '2026-04-10', 'Cancelled');

-- Inserting data into order details table
INSERT INTO order_details VALUES
(1, 1001, 201, 2),
(2, 1001, 203, 1),
(3, 1002, 204, 1),
(4, 1002, 205, 2),
(5, 1003, 206, 1),
(6, 1004, 202, 2),
(7, 1004, 212, 1),
(8, 1005, 208, 2),
(9, 1005, 209, 2),
(10, 1006, 206, 1),
(11, 1006, 207, 2),
(12, 1007, 204, 1),
(13, 1008, 201, 2),
(14, 1008, 203, 2),
(15, 1009, 211, 1),
(16, 1009, 207, 1),
(17, 1010, 208, 3),
(18, 1010, 210, 2),
(19, 1011, 205, 2),
(20, 1011, 204, 1),
(21, 1012, 208, 1);

-- Inserting data into payment table
INSERT INTO payments VALUES
(1, 1001, 'UPI', 620, 'Paid'),
(2, 1002, 'Card', 740, 'Paid'),
(3, 1003, 'UPI', 350, 'Refunded'),
(4, 1004, 'Cash', 680, 'Paid'),
(5, 1005, 'UPI', 560, 'Paid'),
(6, 1006, 'Card', 650, 'Paid'),
(7, 1007, 'UPI', 300, 'Pending'),
(8, 1008, 'Cash', 740, 'Paid'),
(9, 1009, 'UPI', 550, 'Paid'),
(10, 1010, 'Card', 780, 'Paid'),
(11, 1011, 'UPI', 740, 'Paid'),
(12, 1012, 'Cash', 180, 'Refunded');

SELECT * FROM customers;
SELECT * FROM restaurants;
SELECT * FROM food_items;
SELECT * FROM delivery_partners;
SELECT * FROM orders;
SELECT * FROM order_details;
SELECT * FROM payments;
