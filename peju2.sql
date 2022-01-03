CREATE DATABASE peju2;
USE peju2;
CREATE TABLE customers (
    customerid INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (customerid),
    Cname VARCHAR(100),
    Cphone VARCHAR(100),
    Caddress VARCHAR(100)
);
CREATE TABLE items (
    Iid INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (Iid),
    Iname VARCHAR(100),
    TOTAL DOUBLE,
    date VARCHAR(100)
);
CREATE TABLE orders (
    Orderid INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (Orderid),
    customerid INT,
    FOREIGN KEY (customerid)
        REFERENCES customers (customerid)
);
CREATE TABLE ItemOrder (
    FOREIGN KEY (Orderid)
        REFERENCES orders (Orderid),
    Orderid INT,
    Iid INT,
    FOREIGN KEY (Iid)
        REFERENCES items (Iid),
    QTY INT
);
INSERT INTO customers (Cname, Cphone, Caddress) VALUES ('Mark', '0777 339 1046', 'Birmingham');
INSERT INTO customers(Cname,Cphone,Caddress) VALUES ('Mark', '+223456', 'Birmingham');
INSERT INTO customers(Cname,Cphone,Caddress) VALUES ('Mar', '+213456', 'Wolverhapton');
INSERT INTO customers(Cname,Cphone,Caddress) VALUES ('Tony', '+233456', 'Walsall');
INSERT INTO customers(Cname,Cphone,Caddress) VALUES ('Chi', '+223457', 'Oxford');
 INSERT INTO customers(Cname,Cphone,Caddress) VALUES ('Karen', '+223756', 'Aston');
INSERT INTO customers(Cname,Cphone,Caddress) VALUES ('Josh', '+123456', 'Dudley');
INSERT INTO customers(Cname,Cphone,Caddress) VALUES ('Joan', '+223465', 'Bloxwich');
INSERT INTO customers(Cname,Cphone,Caddress) VALUES ('Bola', '+225356', 'London');
INSERT INTO customers(Cname,Cphone,Caddress) VALUES ('Fola', '+323456', 'Essex');
INSERT INTO customers(Cname,Cphone,Caddress) VALUES ('Felix', '+423456', 'Liverpool');
INSERT INTO customers(Cname,Cphone,Caddress) VALUES ('Andy', '07764234569', 'Liverpool');
INSERT INTO customers(Cname,Cphone,Caddress) VALUES ('Sam', '07764234569', 'London');


INSERT INTO items (Iname, TOTAL, date) VALUES ('AnItem', 12.34, '2021-12-24');
INSERT INTO items(Iname, TOTAL, date) VALUES ('Orange', '50', '2021-11-02');
INSERT INTO items(Iname,total,date) VALUES ('Apple', '20', '2021-11-02');
INSERT INTO items(Iname,total,date) VALUES ('Grapes', '40', '2021-11-04');
INSERT INTO  items(Iname,total,date) VALUES ('Banana', '30', '2021-11-05');
INSERT INTO  items(Iname,total,date) VALUES ('Cucumber', '70', '2021-11-05');
INSERT INTO  items(Iname,total,date) VALUES ('Plum', '30', '2021-11-06');
INSERT INTO  items(Iname,total,date) VALUES ('Carrot', '50', '2021-11-07');
INSERT INTO  items(Iname,total,date) VALUES ('Lettuce', '60', '2021-11-06');
INSERT INTO  items(Iname,total,date) VALUES ('Mango', '80', '2021-11-02');
 INSERT INTO  items(Iname,total,date) VALUES ('Lemon', '90', '2021-11-07');
INSERT INTO  items(Iname,total,date) VALUES ('Ginger', '50', '2021-11-04');

INSERT INTO orders (customerid) VALUES (1);
INSERT INTO orders(customerid) VALUES (2);
INSERT INTO orders(customerid) VALUES(3);
INSERT INTO orders(customerid) VALUES(4);
INSERT INTO orders(customerid) VALUES(5);
INSERT INTO orders(customerid) VALUES(6);
INSERT INTO orders(customerid) VALUES(7);
INSERT INTO orders(customerid) VALUES(8);
INSERT INTO orders(customerid) VALUES(9);
INSERT INTO orders(customerid) VALUES (10);
INSERT INTO orders(customerid) VALUES (11);
INSERT INTO orders(customerid) VALUES (12);
INSERT INTO orders(customerid) VALUES (13);
INSERT INTO orders(customerid) VALUES (14);

INSERT INTO ItemOrder (Orderid, Iid, QTY) VALUES (1, 1, 42);
INSERT INTO ItemOrder(Orderid, Iid, QTY) VALUES (2, 2, 22);
INSERT INTO ItemOrder(Orderid, Iid, QTY) VALUES (3, 3, 32);
INSERT INTO ItemOrder(Orderid, Iid, QTY) VALUES (4, 4, 12);
INSERT INTO ItemOrder(Orderid, Iid, QTY) VALUES (5, 5, 6);
INSERT INTO ItemOrder(Orderid, Iid, QTY) VALUES (6, 6, 20);
INSERT INTO ItemOrder(Orderid, Iid, QTY) VALUES (7, 7, 8);
INSERT INTO ItemOrder(Orderid, Iid, QTY) VALUES (8, 8, 5);
INSERT INTO ItemOrder(Orderid, Iid, QTY) VALUES (9, 9, 42);
INSERT INTO ItemOrder(Orderid, Iid, QTY) VALUES (10, 10, 22);
INSERT INTO ItemOrder(Orderid, Iid, QTY) VALUES (11, 11, 15);
INSERT INTO ItemOrder(Orderid, Iid, QTY) VALUES (12, 12, 13);
INSERT INTO ItemOrder(Orderid, Iid, QTY) VALUES (13, 13, 14);
INSERT INTO ItemOrder(Orderid, Iid, QTY) VALUES (14, 14, 14);

Select * from customers;
SELECT * FROM items;
SELECT * FROM orders;
SELECT * FROM ItemOrder;
/*Display number of orders placed in a day*/
SELECT date('date'), COUNT('QTY') AS num_orders,
SUM('total') AS daily_total
FROM ItemOrder 
GROUP BY date('date');

/*Display total amount of order*/
SELECT SUM(total) 
FROM items;