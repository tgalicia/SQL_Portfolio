/*
Creating Table for Bakery Inventory
*/

CREATE TABLE gabi_bakery_inventory(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL
    cost FLOAT NOT NULL
); INSERT INTO gabi_bakery_inventory
(name, quantity, cost) VALUES("chocolate chip cookie", 3, 4.99);
INSERT INTO gabi_bakery_inventory
(name, quantity, cost) VALUES("oatmeal raisin cookie", 4, 4.99);
INSERT INTO gabi_bakery_inventory
(name, quantity, cost) VALUES("sugar cookie", 1, 4.99);
INSERT INTO gabi_bakery_inventory
(name, quantity, cost) VALUES("chocolate pie slice", 8, 6.50);
INSERT INTO gabi_bakery_inventory
(name, quantity, cost) VALUES("brownie", 1, 3.25);
INSERT INTO gabi_bakery_inventory
(name, quantity, cost) VALUES("vanilla cupcake", 3, 5);
INSERT INTO gabi_bakery_inventory
(name, quantity, cost) VALUES("chocolate cupcake", 7, 5);
INSERT INTO gabi_bakery_inventory
(name, quantity, cost) VALUES("double chocolate cookie", 6, 5.50);
INSERT INTO gabi_bakery_inventory
(name, quantity, cost) VALUES("white chocolate cookie", 13, 5.50);


/*
Analyzing items to identify quantities for restock
*/

SELECT name
    ,
    quantity
FROM
    gabi_bakery_inventory
WHERE
    quantity < 5 AND name LIKE "% cookie";
