INSERT INTO customers VALUES
(1,'Rohit','Pune','rohit@gmail.com'),
(2,'Sneha','Mumbai','sneha@gmail.com'),
(3,'Amit','Delhi','amit@gmail.com'),
(4,'Neha','Pune','neha@gmail.com');

INSERT INTO products VALUES
(101,'Laptop','Electronics',50000),
(102,'Mobile','Electronics',30000),
(103,'Headphones','Accessories',2000),
(104,'Chair','Furniture',7000);

INSERT INTO orders VALUES
(1001,1,'2024-01-10'),
(1002,2,'2024-01-12'),
(1003,1,'2024-01-15'),
(1004,3,'2024-01-18');

INSERT INTO order_details VALUES
(1,1001,101,1),
(2,1001,103,2),
(3,1002,102,1),
(4,1003,104,2),
(5,1004,101,1);

INSERT INTO payments VALUES
(501,1001,'UPI','Success'),
(502,1002,'Card','Success'),
(503,1003,'Cash','Pending'),
(504,1004,'UPI','Success');

