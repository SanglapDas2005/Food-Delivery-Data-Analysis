-- Creating Database and Tables

CREATE DATABASE food_delivery;
USE food_delivery;

-- Table1 creating customer table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    contact_no VARCHAR(15)
);

-- Table2 creating resturent table
CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100),
    city VARCHAR(50),
    rating DECIMAL(2,1)
);

-- Table3 creating food items table
CREATE TABLE food_items (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    restaurant_id INT,
    FOREIGN KEY (restaurant_id)
    REFERENCES restaurants(restaurant_id)
);

-- Table4 creating delivery man/ partner table
CREATE TABLE delivery_partners (
    partner_id INT PRIMARY KEY,
    partner_name VARCHAR(100),
    city VARCHAR(50)
);

-- Table5 creating orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    partner_id INT,
    order_date DATE,
    order_status VARCHAR(30),
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id),
    FOREIGN KEY (restaurant_id)
    REFERENCES restaurants(restaurant_id),
    FOREIGN KEY (partner_id)
    REFERENCES delivery_partners(partner_id)
);

-- Table6 creating order details table
CREATE TABLE order_details (
    detail_id INT PRIMARY KEY,
    order_id INT,
    item_id INT,
    quantity INT,
    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),
    FOREIGN KEY (item_id)
    REFERENCES food_items(item_id)
);

-- Table7 creating payment table
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(30),
    amount DECIMAL(10,2),
    payment_status VARCHAR(30),
    FOREIGN KEY (order_id)
    REFERENCES orders(order_id)
);