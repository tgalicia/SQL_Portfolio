/*
Creating Table for Bakery Inventory
*/

CREATE TABLE gabi_bakery_inventory(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL
); INSERT INTO gabi_bakery_inventory
(name, quantity) VALUES("chocolate chip cookie", 3);
INSERT INTO gabi_bakery_inventory
(name, quantity) VALUES("oatmeal raisin cookie", 4);
INSERT INTO gabi_bakery_inventory
 (name, quantity)VALUES("sugar cookie", 1);
INSERT INTO gabi_bakery_inventory
(name, quantity) VALUES("chocolate pie slice", 8);
INSERT INTO gabi_bakery_inventory
(name, quantity) VALUES("brownie", 1);
INSERT INTO gabi_bakery_inventory
(name, quantity) VALUES("vanilla cupcake", 3);
INSERT INTO gabi_bakery_inventory
(name, quantity) VALUES("chocolate cupcake", 7);
INSERT INTO gabi_bakery_inventory
(name, quantity) VALUES("double chocolate cookie", 6);
INSERT INTO gabi_bakery_inventory
(name, quantity) VALUES("white chocolate cookie", 13);


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
