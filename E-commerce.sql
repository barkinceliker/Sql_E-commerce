--CREATE DATABASE E-commerce
--USE [E-commerce]

BEGIN TRANSACTION;
CREATE TABLE TABLE_customer
(
CustomerID INT IDENTITY(1,1),
Customer_name VARCHAR(15) NOT NULL,
Customer_surname VARCHAR(15) NOT NULL,
Customer_email VARCHAR(50) NOT NULL,
Customer_phone_number VARCHAR(50) DEFAULT '0' NOT NULL,
Customer_adresses VARCHAR(100) NOT NULL,
Created_at DATE NOT NULL,
CONSTRAINT pk_TABLE_customer_CustomerID PRIMARY KEY (CustomerID)
);

IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END

BEGIN TRANSACTION;
CREATE TABLE TABLE_customer
(
CustomerID INT IDENTITY(1,1),
Customer_name VARCHAR(15) NOT NULL,
Customer_surname VARCHAR(15) NOT NULL,
Customer_email VARCHAR(50) NOT NULL,
Customer_phone_number VARCHAR(50) DEFAULT '0' NOT NULL,
Customer_adresses VARCHAR(100) NOT NULL,
Created_at DATE NOT NULL
CONSTRAINT pk_TABLE_customer_CustomerID PRIMARY KEY (CustomerID)
)

IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END


INSERT INTO TABLE_customer (Customer_name, Customer_surname, Customer_email, Customer_phone_number, Customer_adresses, Created_at) VALUES
('John', 'Doe', 'johndoe@email.com', '555-1234', '123 Main St, Anytown, USA', '2023-04-20'),
('Jane', 'Doe', 'janedoe@email.com', '555-5678', '456 Oak St, Anytown, USA', '2023-04-20'),
('Bob', 'Smith', 'bobsmith@email.com', '555-9012', '789 Maple St, Anytown, USA', '2023-04-20'),
('Alice', 'Johnson', 'alicejohnson@email.com', '555-3456', '321 Pine St, Anytown, USA', '2023-04-20'),
('Michael', 'Lee', 'michaellee@email.com', '555-7890', '654 Cedar St, Anytown, USA', '2023-04-20'),
('Sarah', 'Brown', 'sarahbrown@email.com', '555-2345', '987 Elm St, Anytown, USA', '2023-04-20'),
('David', 'Garcia', 'davidgarcia@email.com', '555-6789', '753 Birch St, Anytown, USA', '2023-04-20'),
('Maria', 'Rodriguez', 'mariarodriguez@email.com', '555-0123', '246 Walnut St, Anytown, USA', '2023-04-20'),
('James', 'Wilson', 'jameswilson@email.com', '555-4567', '369 Oak St, Anytown, USA', '2023-04-20'),
('Emily', 'Martinez', 'emilymartinez@email.com', '555-8901', '582 Cedar St, Anytown, USA', '2023-04-20'),
('William', 'Anderson', 'williamanderson@email.com', '555-2345', '951 Maple St, Anytown, USA', '2023-04-20'),
('Sophia', 'Taylor', 'sophiataylor@email.com', '555-6789', '753 Pine St, Anytown, USA', '2023-04-20'),
('Daniel', 'Thomas', 'danielthomas@email.com', '555-0123', '246 Cedar St, Anytown, USA', '2023-04-20'),
('Olivia', 'Hernandez', 'oliviahernandez@email.com', '555-4567', '369 Birch St, Anytown, USA', '2023-04-20'),
('Matthew', 'Moore', 'matthewmoore@email.com', '555-8901', '582 Elm St, Anytown, USA', '2023-04-20');

BEGIN TRANSACTION;
CREATE TABLE TABLE_order
(
OrderID INT IDENTITY(1,1),
Order_name VARCHAR(20) NOT NULL,
Customer INT NOT NULL,
Order_category VARCHAR(20) NOT NULL,
Time_to_purchase_the_order DATE NOT NULL,
Order_code VARCHAR(15) UNIQUE NOT NULL,
Order_price int NOT NULL,
departure_date_of_the_order DATE NOT NULL,
delivery_date_of_the_order DATE NOT NULL,
The_supply_point_of_the_order VARCHAR(20) NOT NULL,
CONSTRAINT pk_TABLE_order PRIMARY KEY(OrderID),
CONSTRAINT fk_TABLE_order_TABLE_customer
FOREIGN KEY (Customer) REFERENCES TABLE_customer(CustomerID)
)

IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END



INSERT INTO TABLE_order (Order_name, Customer, Order_category, Time_to_purchase_the_order, Order_code, Order_price, departure_date_of_the_order, delivery_date_of_the_order, The_supply_point_of_the_order) VALUES
('Product A', 1, 'Category A', '2023-04-10', 'ABC123', 50, '2023-04-12', '2023-04-16', 'Supplier 1'),
('Product B', 2, 'Category B', '2023-04-11', 'DEF456', 75, '2023-04-13', '2023-04-18', 'Supplier 2'),
('Product C', 3, 'Category C', '2023-04-12', 'GHI789', 100, '2023-04-14', '2023-04-20', 'Supplier 3'),
('Product D', 4, 'Category D', '2023-04-13', 'JKL012', 150, '2023-04-15', '2023-04-22', 'Supplier 4'),
('Product E', 5, 'Category E', '2023-04-14', 'MNO345', 200, '2023-04-16', '2023-04-24', 'Supplier 5'),
('Product F', 6, 'Category F', '2023-04-15', 'PQR678', 250, '2023-04-17', '2023-04-26', 'Supplier 6'),
('Product G', 7, 'Category G', '2023-04-16', 'STU901', 300, '2023-04-18', '2023-04-28', 'Supplier 7'),
('Product H', 8, 'Category H', '2023-04-17', 'VWX234', 350, '2023-04-19', '2023-04-30', 'Supplier 8'),
('Product I', 9, 'Category I', '2023-04-18', 'YZA567', 400, '2023-04-20', '2023-05-02', 'Supplier 9'),
('Product J', 10, 'Category J', '2023-04-19', 'BCD890', 450, '2023-04-21', '2023-05-04', 'Supplier 10'),
('Product K', 11, 'Category K', '2023-04-20', 'EFG123', 500, '2023-04-22', '2023-05-06', 'Supplier 11'),
('Product L', 12, 'Category L', '2023-04-21', 'HIJ456', 550, '2023-04-23', '2023-05-08', 'Supplier 12'),
('Product M', 13, 'Category M', '2023-04-22', 'KLM789', 600, '2023-04-24', '2023-05-10', 'Supplier 13'),
('Product N', 14, 'Category N', '2023-04-23', 'OPQ012', 650, '2023-04-25', '2023-05-12', 'Supplier 14'),
('Product O', 15, 'Category O', '2023-04-24', 'LKMQ050', 700, '2023-04-26', '2023-05-13','Supplier 15');


BEGIN TRANSACTION;
CREATE TABLE TABLE_order_details
( 
	Order_detailsID INT IDENTITY(1,1),
	Order_ INT NOT NULL,
	Order_delivery_point VARCHAR(20) NOT NULL,
	Order_delivery_code VARCHAR(30) UNIQUE NOT NULL,
	Product INT NOT NULL,
	Order_that_has_the_nearest_supplier VARCHAR(20) NOT NULL,
	Order_quantity INT NOT NULL,
	Order_created_at DATE ,
CONSTRAINT pk_TABLE_order_details_Order_detailsID PRIMARY KEY (Order_DetailsID),
CONSTRAINT fk_TABLE_order_details_TABLE_order FOREIGN KEY (Order_) REFERENCES TABLE_order(OrderID),
CONSTRAINT fk_TABLE_order_details_TABLE_products FOREIGN KEY (Product) REFERENCES TABLE_products(ProductID) 
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END


INSERT INTO TABLE_order_details (Order_, Order_delivery_point, Order_delivery_code, Product, Order_that_has_the_nearest_supplier, Order_quantity, Order_created_at) VALUES
(1, 'Point A', 'CODE001', 1, 'Supplier A', 2, '2023-04-20'),
(1, 'Point B', 'CODE002',  2, 'Supplier B', 1, '2023-04-21'),
(2, 'Point C', 'CODE003',  3, 'Supplier A', 3, '2023-04-22'),
(2, 'Point D', 'CODE004',  4, 'Supplier C', 2, '2023-04-23'),
(3, 'Point E', 'CODE005',  5, 'Supplier D', 1, '2023-04-24'),
(3, 'Point F', 'CODE006',  6, 'Supplier B', 3, '2023-04-25'),
(4, 'Point G', 'CODE007',  7, 'Supplier C', 2, '2023-04-26'),
(4, 'Point H', 'CODE008',  8, 'Supplier A', 1, '2023-04-27'),
(5, 'Point I', 'CODE009',  9, 'Supplier B', 3, '2023-04-28'),
(5, 'Point J', 'CODE010',  10, 'Supplier D', 2, '2023-04-29'),
(6, 'Point K', 'CODE011', 11, 'Supplier C', 1, '2023-04-30'),
(6, 'Point L', 'CODE012', 12, 'Supplier A', 2, '2023-05-01'),
(7, 'Point M', 'CODE013',  13, 'Supplier D', 1, '2023-05-02'),
(7, 'Point N', 'CODE014', 14, 'Supplier B', 2, '2023-05-03'),
(8, 'Point O', 'CODE015',  15, 'Supplier A', 3, '2023-05-04');

BEGIN TRANSACTION;
CREATE TABLE TABLE_products
(
	ProductID INT IDENTITY(1,1),
	Product_name VARCHAR(20) NOT NULL,
	Product_image_url VARCHAR(100) NOT NULL,
	Product_brand VARCHAR(20) NOT NULL,
	Product_supplier VARCHAR(20) NOT NULL,
	Product_category TINYINT NOT NULL,
	Made_In  VARCHAR(20) NOT NULL,
	Product_price INT NOT NULL,
CONSTRAINT pk_TABLE_products_ProductID PRIMARY KEY(ProductID)
)

IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END


INSERT INTO TABLE_products (Product_name, Product_image_url, Product_brand, Product_supplier, Product_category, Made_In, Product_price) VALUES
('Product A', 'http://imageurl.com/producta', 'Brand A', 'Supplier A', 1, 'Country A', 100),
('Product B', 'http://imageurl.com/productb', 'Brand B', 'Supplier B', 2, 'Country B', 200),
('Product C', 'http://imageurl.com/productc', 'Brand C', 'Supplier C', 3, 'Country C', 300),
('Product D', 'http://imageurl.com/productd', 'Brand D', 'Supplier D', 4, 'Country D', 400),
('Product E', 'http://imageurl.com/producte', 'Brand E', 'Supplier E', 5, 'Country E', 500),
('Product F', 'http://imageurl.com/productf', 'Brand F', 'Supplier F', 1, 'Country F', 600),
('Product G', 'http://imageurl.com/productg', 'Brand G', 'Supplier G', 2, 'Country G', 700),
('Product H', 'http://imageurl.com/producth', 'Brand H', 'Supplier H', 3, 'Country H', 800),
('Product I', 'http://imageurl.com/producti', 'Brand I', 'Supplier I', 4, 'Country I', 900),
('Product J', 'http://imageurl.com/productj', 'Brand J', 'Supplier J', 5, 'Country J', 1000),
('Product K', 'http://imageurl.com/productk', 'Brand K', 'Supplier K', 1, 'Country K', 1100),
('Product L', 'http://imageurl.com/productl', 'Brand L', 'Supplier L', 2, 'Country L', 1200),
('Product M', 'http://imageurl.com/productm', 'Brand M', 'Supplier M', 3, 'Country M', 1300),
('Product N', 'http://imageurl.com/productn', 'Brand N', 'Supplier N', 4, 'Country N', 1400),
('Product O', 'http://imageurl.com/producto', 'Brand O', 'Supplier O', 5, 'Country O', 1500);

BEGIN TRANSACTION;
CREATE TABLE TABLE_product_category
( 
	Product_categoryID INT IDENTITY(1,1),
	Product INT NOT NULL,
	Product_category_name VARCHAR(15) NOT NULL,
	Product_category_code varchar(30) UNIQUE NOT NULL,
	CONSTRAINT pk_TABLE_product_category_Product_categoryID PRIMARY KEY(Product_categoryID),
	CONSTRAINT fk_TABLE_product_category_TABLE_products
	FOREIGN KEY (Product) REFERENCES TABLE_products(ProductID)
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END

INSERT INTO TABLE_product_category (Product, Product_category_name, Product_category_code) 
VALUES
(1, 'Category A', 'CODE001_new'),
(2, 'Category B', 'CODE002_new'),
(3, 'Category C', 'CODE003_new'),
(4, 'Category D', 'CODE004_new'),
(5, 'Category E', 'CODE005_new'),
(6, 'Category F', 'CODE006_new'),
(7, 'Category G', 'CODE007_new'),
(8, 'Category H', 'CODE008_new'),
(9, 'Category I', 'CODE009_new'),
(10, 'Category J', 'CODE010_new'),
(11, 'Category K', 'CODE011_new'),
(12, 'Category L', 'CODE012_new'),
(13, 'Category M', 'CODE013_new'),
(14, 'Category N', 'CODE014_new'),
(15, 'Category O', 'CODE015_new');



BEGIN TRANSACTION;
CREATE TABLE TABLE_product_brand --yapmadım sorgu
(
	Product_brandID INT IDENTITY(1,1),
	Product INT NOT NULL,
	Product_category INT NOT NULL,
	Product_brand_name VARCHAR(20) NOT NULL,
	Product_brand_code VARCHAR(30) UNIQUE NOT NULL,
	Product_brand_origin VARCHAR(15) NOT NULL,
	CONSTRAINT pk_TABLE_product_brand_Product_brandID PRIMARY KEY(Product_brandID),
	CONSTRAINT fk_TABLE_product_brand_TABLE_product_category 
	FOREIGN KEY (Product_category) REFERENCES TABLE_product_category(Product_categoryID),
	CONSTRAINT fk_TABLE_product_brand_TABLE_products
	FOREIGN KEY (Product) REFERENCES TABLE_products(ProductID)
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END

INSERT INTO TABLE_product_brand (Product, Product_category, Product_brand_name, Product_brand_code, Product_brand_origin)
VALUES
(1, 1, 'Brand A', 'BRANDA123', 'Turkey'),
(2, 1, 'Brand B', 'BRANDB456', 'USA'),
(3, 2, 'Brand C', 'BRANDC789', 'China'),
(4, 3, 'Brand D', 'BRANDD012', 'Germany'),
(5, 4, 'Brand E', 'BRANDE345', 'Japan'),
(6, 2, 'Brand F', 'BRANDF678', 'France'),
(7, 5, 'Brand G', 'BRANDG901', 'Korea'),
(8, 4, 'Brand H', 'BRANDH234', 'Italy'),
(9, 3, 'Brand I', 'BRANDI567', 'Canada'),
(10, 6, 'Brand J', 'BRANDJ890', 'Spain'),
(11, 5, 'Brand K', 'BRANDK123', 'UK'),
(12, 1, 'Brand L', 'BRANDL456', 'Brazil'),
(13, 2, 'Brand M', 'BRANDM789', 'India'),
(14, 6, 'Brand N', 'BRANDN012', 'Russia'),
(15, 3, 'Brand O', 'BRANDO345', 'Australia');

BEGIN TRANSACTION;
CREATE TABLE TABLE_products_supplier
(
	Products_supplierID INT IDENTITY(1,1),
	Product_brand INT NOT NULL,
	Products_supplier_name VARCHAR(20) NOT NULL,
	Products_supplier_address VARCHAR(50) NOT NULL,
	Products_supplier_email VARCHAR(50) NOT NULL,
	Products_phone_number VARCHAR(11) DEFAULT '0',
	Products_that_thenumber_of_companies_with_which_the_supplier_has_a_joint_agreement SMALLINT NOT NULL,
	Products_supplier_security_approval BIT NOT NULL,
	Products_supplier_institutional_approval BIT NOT NULL,
	Products_supplier_evaluation_Score TINYINT NOT NULL,
	CONSTRAINT pk_TABLE_products_supplier_Products_supplierID PRIMARY KEY(Products_supplierID),
	CONSTRAINT fk_TABLE_products_supplier_TABLE_product_brand 
	FOREIGN KEY (Product_brand) REFERENCES TABLE_product_brand(Product_brandID)
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END

INSERT INTO TABLE_products_supplier (Product_brand, Products_supplier_name, Products_supplier_address, Products_supplier_email, Products_phone_number, Products_that_thenumber_of_companies_with_which_the_supplier_has_a_joint_agreement, Products_supplier_security_approval, Products_supplier_institutional_approval, Products_supplier_evaluation_Score)
VALUES
(1, 'Supplier A', 'Address A', 'supplierA@email.com', '1234567890', 5, 1, 1, 90),
(1, 'Supplier B', 'Address B', 'supplierB@email.com', '2345678901', 2, 1, 0, 75),
(1, 'Supplier C', 'Address C', 'supplierC@email.com', '3456789012', 7, 0, 1, 85),
(2, 'Supplier D', 'Address D', 'supplierD@email.com', '4567890123', 3, 1, 0, 70),
(2, 'Supplier E', 'Address E', 'supplierE@email.com', '5678901234', 6, 0, 1, 80),
(3, 'Supplier F', 'Address F', 'supplierF@email.com', '6789012345', 4, 1, 1, 95),
(4, 'Supplier G', 'Address G', 'supplierG@email.com', '7890123456', 1, 0, 0, 60),
(5, 'Supplier H', 'Address H', 'supplierH@email.com', '8901234567', 9, 1, 0, 65),
(6, 'Supplier I', 'Address I', 'supplierI@email.com', '9012345678', 8, 0, 1, 55),
(7, 'Supplier J', 'Address J', 'supplierJ@email.com', '0123456789', 2, 1, 1, 75),
(8, 'Supplier K', 'Address K', 'supplierK@email.com', '1234567890', 6, 0, 0, 50),
(9, 'Supplier L', 'Address L', 'supplierL@email.com', '2345678901', 5, 1, 0, 80),
(10, 'Supplier M', 'Address M', 'supplierM@email.com', '3456789012', 3, 0, 1, 65),
(11, 'Supplier N', 'Address N', 'supplierN@email.com', '4567890123', 4, 1, 0, 70),
(12, 'Supplier O', 'Address O', 'supplierO@email.com', '5678901234', 7, 0, 0, 40);

BEGIN TRANSACTION;
CREATE TABLE TABLE_products_supplier_address
(
	Products_supplier_AddressID INT IDENTITY(1,1),
	Products_supplier INT NOT NULL,
	Products_supplier_country VARCHAR(20) NOT NULL,
	Products_supplier_city VARCHAR(20) NOT NULL,
	Products_supplier_street VARCHAR(30) NOT NULL,
	Products_supplier_postal_code INT NOT NULL,
	Created_at DATE NOT NULL,
	CONSTRAINT pk_TABLE_products_supplier_address_Products_supplier_AddressID PRIMARY KEY(Products_supplier_AddressID),
	CONSTRAINT fk_TABLE_products_supplier_address_TABLE_products_supplier 
	FOREIGN KEY (Products_supplier) REFERENCES TABLE_products_supplier(Products_supplierID)
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END


INSERT INTO TABLE_products_supplier_address (Products_supplier, Products_supplier_country, Products_supplier_city, Products_supplier_street, Products_supplier_postal_code, Created_at)
VALUES
(1, 'USA', 'New York', '5th Avenue', '10022', '2022-01-01'),
(1, 'USA', 'Los Angeles', 'Rodeo Drive', '90210', '2022-01-02'),
(2, 'UK', 'London', 'Oxford Street', '11201', '2022-01-03'),
(2, 'UK', 'Manchester', 'Deansgate', '35789', '2022-01-04'),
(3, 'France', 'Paris', 'Champs-Élysées', '75008', '2022-01-05'),
(3, 'France', 'Marseille', 'Rue de la République', '13001', '2022-01-06'),
(4, 'Japan', 'Tokyo', 'Ginza', '1040061', '2022-01-07'),
(4, 'Japan', 'Osaka', 'Dōtonbori', '5420071', '2022-01-08'),
(5, 'Germany', 'Berlin', 'Kurfürstendamm', '10707', '2022-01-09'),
(5, 'Germany', 'Munich', 'Maximilianstraße', '80539', '2022-01-10'),
(6, 'China', 'Beijing', 'Wangfujing Street', '100006', '2022-01-11'),
(6, 'China', 'Shanghai', 'Nanjing Road', '200003', '2022-01-12'),
(7, 'Australia', 'Sydney', 'Pitt Street', '2000', '2022-01-13'),
(7, 'Australia', 'Melbourne', 'Chapel Street', '3181', '2022-01-14'),
(8, 'Brazil', 'Rio de Janeiro', 'Avenida Atlântica', '22070', '2022-01-15');




BEGIN TRANSACTION;
CREATE TABLE TABLE_payments_Methods
(
	PaymentsID INT IDENTITY(1,1),
	Payment_card_full_name VARCHAR(20) NOT NULL,
	Payment_type VARCHAR(15) NOT NULL,
	Payment_Card VARCHAR(25) NOT NULL,
	Payment_Card_number BIGINT NOT NULL,
	Payment_country VARCHAR(20) NOT NULL,
	Payment_security_code BIGINT CHECK(Payment_security_code>0 AND Payment_security_code<999999) NOT NULL,
	Payment_approval BIT NOT NULL,
	CONSTRAINT pk_TABLE_Payments_Methods_PaymentsID PRIMARY KEY(PaymentsID)
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END


INSERT INTO TABLE_payments_Methods (Payment_card_full_name, Payment_type, Payment_Card, Payment_Card_number, Payment_country, Payment_security_code, Payment_approval)
VALUES
('John Doe', 'Credit', 'Visa', 1234567890123456, 'USA', 123, 1),
('Jane Smith', 'Debit', 'Mastercard', 9876543210987654, 'Canada', 456, 0),
('David Lee', 'Credit', 'Amex', 5555555555554444, 'USA', 789, 1),
('Maria Rodriguez', 'Debit', 'Visa', 4444333322221111, 'Mexico', 234, 1),
('Mohammed Ali', 'Credit', 'Mastercard', 5105105105105100, 'Egypt', 678, 0),
('Anna Kowalski', 'Debit', 'Visa', 4111111111111111, 'Poland', 901, 1),
('Juan Perez', 'Credit', 'Amex', 378282246310005, 'Argentina', 345, 0),
('Jung-Ho Kim', 'Debit', 'Mastercard', 5555555555555599, 'South Korea', 789, 1),
('Luisa Fernandez', 'Credit', 'Visa', 4111111111111111, 'Spain', 234, 0),
('Hiroshi Nakamura', 'Debit', 'JCB', 3566111111111113, 'Japan', 567, 1),
('Sophie Martin', 'Credit', 'Mastercard', 5105105105105100, 'France', 890, 1),
('Giovanni Rossi', 'Debit', 'Visa', 4917610000000000, 'Italy', 123, 0),
('Mohammad Khan', 'Credit', 'Discover', 6011111111111117, 'Pakistan', 456, 1),
('Anastasia Ivanova', 'Debit', 'Mastercard', 2223000048400011, 'Russia', 789, 0),
('Lucas Silva', 'Credit', 'Amex', 378282246310005, 'Brazil', 234, 1);


BEGIN TRANSACTION;
CREATE TABLE TABLE_shipping_methods
(
	ShippingID INT IDENTITY(1,1),
	Shipping_type VARCHAR(20) NOT NULL,
	Shipping_vehicle VARCHAR(115) NOT NULL,
	Shipping_code VARCHAR(10) UNIQUE NOT NULL,
	Shipping_country VARCHAR(15) NOT NULL,
	Shipping_company_email VARCHAR(30) NOT NULL,
	Shipping_fee INT NOT NULL,
	Shipping_payment INT NOT NULL,
	Shipping_messeage_section VARCHAR(70) NOT NULL,
	Shipping_created_at DATE NOT NULL,
	Estimated_shipping_time DATE  NOT NULL ,
CONSTRAINT pk_TABLE_shipping_methods_ShippingID PRIMARY KEY(ShippingID),
CONSTRAINT fk_TABLE_shipping_methods_shippingID_TABLE_payments_Methods 
FOREIGN KEY (Shipping_payment) REFERENCES TABLE_payments_Methods(PaymentsID)
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END


INSERT INTO TABLE_shipping_methods (Shipping_type, Shipping_vehicle, Shipping_code, Shipping_country, Shipping_company_email, Shipping_fee, Shipping_payment, Shipping_messeage_section, Shipping_created_at, Estimated_shipping_time)
VALUES
('Standard', 'Truck', 'ST-001', 'USA', 'shipping@company1.com', 20, 1, 'Please leave package at the front door.', '2022-01-01', '2022-01-08'),
('Express', 'Plane', 'EX-001', 'Canada', 'shipping@company2.com', 30, 2, 'Signature is required upon delivery.', '2022-01-02', '2022-01-06'),
('Standard', 'Boat', 'ST-002', 'UK', 'shipping@company3.com', 25, 3, 'Please deliver to the reception desk.', '2022-01-03', '2022-01-11'),
('Express', 'Truck', 'EX-002', 'Germany', 'shipping@company4.com', 35, 4, 'Please call recipient before delivery.', '2022-01-04', '2022-01-08'),
('Standard', 'Plane', 'ST-003', 'France', 'shipping@company5.com', 22, 5, 'Please deliver to the back door.', '2022-01-05', '2022-01-13'),
('Express', 'Boat', 'EX-003', 'Italy', 'shipping@company6.com', 40, 6, 'Please leave package with the neighbor.', '2022-01-06', '2022-01-09'),
('Standard', 'Truck', 'ST-004', 'Japan', 'shipping@company7.com', 30, 7, 'Please deliver to the security desk.', '2022-01-07', '2022-01-15'),
('Express', 'Plane', 'EX-004', 'South Korea', 'shipping@company8.com', 45, 8, 'Recipient is not available during the day, please deliver after 6pm.', '2022-01-08', '2022-01-12 '),
('Standard', 'Boat', 'ST-005', 'Australia', 'shipping@company9.com', 25, 9, 'Please leave package with the receptionist.', '2022-01-09', '2022-01-17'),
('Express', 'Truck', 'EX-005', 'Brazil', 'shipping@company10.com', 50, 10, 'Recipient is only available on weekends, please deliver on Saturday.', '2022-01-10', '2022-01-14'),
('Standard', 'Plane', 'ST-006', 'Russia', 'shipping@company11.com', 35, 11, 'Please deliver to the garage.', '2022-01-11', '2022-01-19');

BEGIN TRANSACTION;
CREATE TABLE TABLE_country
(
	CountryID INT IDENTITY(1,1),
	Country_name VARCHAR(15) NOT NULL,
	Country_payment INT NOT NULL,
	Country_shipping INT NOT NULL,
	Country_fee_rating TINYINT CHECK(Country_fee_rating>0 AND Country_fee_rating<40) NOT NULL,
	Country_product_stock INT NOT NULL,
	Country_foreign_trade_volume BIGINT NOT NULL,
	CONSTRAINT pk_TABLE_country_CountryID PRIMARY KEY (CountryID),
	CONSTRAINT fk_TABLE_country_TABLE_payments_Methods
	FOREIGN KEY (Country_payment) REFERENCES TABLE_payments_Methods(PaymentsID),
	CONSTRAINT fk_TABLE_country_TABLE_shipping_methods
	FOREIGN KEY (Country_shipping) REFERENCES TABLE_shipping_methods(ShippingID)
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END


INSERT INTO TABLE_country (Country_name, Country_payment, Country_shipping, Country_fee_rating, Country_product_stock, Country_foreign_trade_volume)
VALUES
('United States', 1, 1, 10, 500000, 100000000),
('Canada', 2, 2, 15, 250000, 25000000),
('Mexico', 1, 3, 20, 100000, 5000000),
('Brazil', 3, 1, 25, 75000, 10000000),
('Argentina', 2, 3, 30, 50000, 500000),
('United Kingdom', 1, 1, 5, 500000, 75000000),
('France', 2, 2, 10, 250000, 5000000),
('Germany', 1, 3, 15, 100000, 2500000),
('Italy', 3, 1, 20, 75000, 500000),
('Spain', 2, 3, 25, 50000, 250000),
('China', 1, 1, 30, 500000, 1000000000),
('Japan', 2, 2, 10, 250000, 10000000),
('South Korea', 1, 3, 15, 100000, 5000000),
('India', 3, 1, 20, 75000, 2500000),
('Australia', 2, 3, 25, 50000, 10000000);


BEGIN TRANSACTION;
CREATE TABLE TABLE_city
(
	CityID INT IDENTITY(1,1),
	City_name VARCHAR(20) NOT NULL,
	CONSTRAINT pk_TABLE_city_CityID PRIMARY KEY (CityID)
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END


INSERT INTO TABLE_city (City_name) VALUES
('Ankara'),
('Istanbul'),
('Izmir'),
('Bursa'),
('Antalya'),
('Adana'),
('Trabzon'),
('Konya'),
('Gaziantep'),
('Mersin'),
('Kayseri'),
('Samsun'),
('Eskisehir'),
('Diyarbakir'),
('Malatya');


BEGIN TRANSACTION;
CREATE TABLE TABLE_coupons
(
	CouponID INT IDENTITY(1,1),
	Coupon_name VARCHAR(20) NOT NULL,
	Coupon_type VARCHAR(15) NOT NULL,
	Coupon_code VARCHAR(25) NOT NULL UNIQUE,
	Coupon_start_date DATE NOT NULL,
	Coupon_last_date DATE NOT NULL,
	CONSTRAINT pk_TABLE_coupons_CouponID PRIMARY KEY (CouponID)
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END



INSERT INTO TABLE_coupons (Coupon_name, Coupon_type, Coupon_code, Coupon_start_date, Coupon_last_date)
VALUES
('Coupon 1', 'Percentage', 'COUPON1', '2023-05-01', '2023-05-31'),
('Coupon 2', 'Percentage', 'COUPON2', '2023-06-01', '2023-06-30'),
('Coupon 3', 'Fixed amount', 'COUPON3', '2023-07-01', '2023-07-31'),
('Coupon 4', 'Fixed amount', 'COUPON4', '2023-08-01', '2023-08-31'),
('Coupon 5', 'Percentage', 'COUPON5', '2023-09-01', '2023-09-30'),
('Coupon 6', 'Fixed amount', 'COUPON6', '2023-10-01', '2023-10-31'),
('Coupon 7', 'Percentage', 'COUPON7', '2023-11-01', '2023-11-30'),
('Coupon 8', 'Fixed amount', 'COUPON8', '2023-12-01', '2023-12-31'),
('Coupon 9', 'Percentage', 'COUPON9', '2024-01-01', '2024-01-31'),
('Coupon 10', 'Fixed amount', 'COUPON10', '2024-02-01', '2024-02-29'),
('Coupon 11', 'Percentage', 'COUPON11', '2024-03-01', '2024-03-31'),
('Coupon 12', 'Fixed amount', 'COUPON12', '2024-04-01', '2024-04-30'),
('Coupon 13', 'Percentage', 'COUPON13', '2024-05-01', '2024-05-31'),
('Coupon 14', 'Fixed amount', 'COUPON14', '2024-06-01', '2024-06-30'),
('Coupon 15', 'Percentage', 'COUPON15', '2024-07-01', '2024-07-31');


BEGIN TRANSACTION;
CREATE TABLE TABLE_discount
(
    Discount_id INT IDENTITY(1,1),
    Discount_coupon INT NOT NULL,
    Discount_name VARCHAR(50) NOT NULL,
    Discount_code VARCHAR(20) NOT NULL,
    Discount_rate TINYINT NOT NULL,
    Discount_amount decimal(5,2) NOT NULL,
    Discount_category VARCHAR(50) NOT NULL,
    Discount_about VARCHAR(50) NOT NULL,
    Discount_type VARCHAR(15) NOT NULL,
    Discount_start_date DATE NOT NULL,
    Discount_end_date DATE NOT NULL,
    Created_at DATE NOT NULL,
    CONSTRAINT pk_TABLE_discount_Discount_id PRIMARY KEY (Discount_id),
    CONSTRAINT fk_TABLE_discount_TABLE_coupons
    FOREIGN KEY (Discount_coupon) REFERENCES TABLE_coupons(CouponID) 
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END



INSERT INTO TABLE_discount (Discount_coupon, Discount_name, Discount_code, Discount_rate, Discount_amount, Discount_category, Discount_about, Discount_type, Discount_start_date, Discount_end_date, Created_at) VALUES
(1, '10% off your purchase', '10OFF', 10, 0.00, 'All', 'Valid for all products', 'Percent', '2023-05-01', '2023-05-31', '2023-04-20'),
(1, '20% off on electronics', 'ELECTRO20', 20, 0.00, 'Electronics', 'Valid for electronics products only', 'Percent', '2023-05-01', '2023-05-31', '2023-04-20'),
(2, '$5 off on your first order', 'WELCOME5', 0, 5.00, 'All', 'Valid for first order only', 'Amount', '2023-05-01', '2023-05-31', '2023-04-20'),
(3, '15% off on clothing', 'CLOTH15', 15, 0.00, 'Clothing', 'Valid for clothing products only', 'Percent', '2023-05-01', '2023-05-31', '2023-04-20'),
(4, '$10 off on orders over $50', '10OFF50', 0, 10.00, 'All', 'Valid for orders over $50', 'Amount', '2023-05-01', '2023-05-31', '2023-04-20'),
(5, 'Free shipping on all orders', 'FREESHIP', 0, 0.00, 'All', 'Valid for all products', 'Shipping', '2023-05-01', '2023-05-31', '2023-04-20'),
(6, '20% off on beauty products', 'BEAUTY20', 20, 0.00, 'Beauty', 'Valid for beauty products only', 'Percent', '2023-05-01', '2023-05-31', '2023-04-20'),
(7, '$25 off on orders over $100', '25OFF100', 0, 25.00, 'All', 'Valid for orders over $100', 'Amount', '2023-05-01', '2023-05-31', '2023-04-20'),
(8, '10% off on all furniture', 'FURN10', 10, 0.00, 'Furniture', 'Valid for furniture products only', 'Percent', '2023-05-01', '2023-05-31', '2023-04-20'),
(9, 'Buy one get one free on select items', 'BOGO', 0, 100.00, 'Select Items', 'Valid for select items only', 'BOGO', '2023-05-01', '2023-05-31', '2023-04-20'),
(10, '20% off on outdoor gear', 'OUTDOOR20', 20, 0.00, 'Outdoor Gear', 'Valid for outdoor gear products only', 'Percent', '2023-05-01', '2023-05-31', '2023-04-20');

	

BEGIN TRANSACTION;
CREATE TABLE TABLE_customers_feedback
(
	FeedbackID INT IDENTITY(1,1),
	Customer INT NOT NULL,
	Customer_phone_number VARCHAR(20) NOT NULL,
	Customer_email VARCHAR(50) NOT NULL,
	Customer_country INT NOT NULL,
	Customer_city INT NOT NULL,
	Customer_rating SMALLINT NOT NULL,
	The_discount_code_used_by_the_customer VARCHAR(20) NOT NULL,
	Customer_message VARCHAR(50) NOT NULL,
	Product_purchased_by_the_customer INT NOT NULL,
	Product_category_purchased_by_the_customer VARCHAR(20) NOT NULL,
	Type_of_shipping_to_the_customer INT NOT NULL,
	Customer_payment INT NOT NULL,
	Customer_full_address VARCHAR(30) NOT NULL,
	CONSTRAINT pk_TABLE_customers_feedback_FeedbackID PRIMARY KEY(FeedBackID),
	CONSTRAINT fk_TABLE_customers_feedback_TABLE_customer
	FOREIGN KEY (Customer)	REFERENCES TABLE_customer(CustomerID),
	CONSTRAINT fk_TABLE_customers_feedback_TABLE_country
	FOREIGN KEY (Customer_country) REFERENCES TABLE_country(CountryID),
	CONSTRAINT fk_TABLE_customers_feedback_TABLE_city
	FOREIGN KEY (Customer_city) REFERENCES TABLE_city(CityID),
	CONSTRAINT fk_TABLE_customers_feedback_TABLE_payments_Methods
	FOREIGN KEY (Customer_payment) REFERENCES TABLE_payments_Methods(PaymentsID),
	CONSTRAINT fk_TABLE_customers_feedback_TABLE_shipping_methods
	FOREIGN KEY (Type_of_shipping_to_the_customer) REFERENCES TABLE_shipping_methods(ShippingID),
	CONSTRAINT fk_TABLE_customers_feedback_TABLE_products
	FOREIGN KEY (Product_purchased_by_the_customer) REFERENCES TABLE_products(ProductID)

)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END



INSERT INTO TABLE_customers_feedback (Customer, Customer_phone_number, Customer_email, Customer_country, Customer_city, Customer_rating, The_discount_code_used_by_the_customer, Customer_message, Product_purchased_by_the_customer, Product_category_purchased_by_the_customer, Type_of_shipping_to_the_customer, Customer_payment, Customer_full_address)
VALUES
(1, '555-123-4567', 'john.doe@example.com', 1, 1, 5, 'DISC10', 'Great service, fast delivery', 1, 'Electronics', 1, 1, '123 Main St.'),
(2, '555-555-1212', 'jane.doe@example.com', 1, 2, 4, 'SPRING15', 'Product arrived damaged', 2, 'Clothing', 2, 2, '456 Broadway'),
(3, '555-867-5309', 'robert.smith@example.com', 2, 3, 3, 'WELCOME10', 'Product was as described, but shipping was slow', 3, 'Books', 3, 3, '789 Main St.'),
(4, '555-555-5555', 'mary.johnson@example.com', 2, 4, 5, 'FALL20', 'Excellent customer service', 4, 'Home', 1, 2, '321 Elm St.'),
(5, '555-123-9876', 'david.jones@example.com', 3, 5, 2, 'DISC5', 'Product was not what I expected', 5, 'Electronics', 2, 1, '567 Oak St.'),
(6, '555-555-1234', 'susan.smith@example.com', 3, 6, 4, 'SPRING25', 'Fast shipping, good communication', 6, 'Clothing', 3, 3, '987 Main St.'),
(7, '555-555-5555', 'brian.johnson@example.com', 4, 7, 5, 'SUMMER30', 'Product exceeded expectations', 7, 'Home', 1, 1, '654 Pine St.'),
(8, '555-555-1212', 'stephanie.davis@example.com', 4, 8, 2, 'DISC15', 'Product was defective', 8, 'Books', 2, 2, '321 Maple Ave.'),
(9, '555-555-1212', 'peter.williams@example.com', 5, 9, 5, 'HOLIDAY25', 'Great prices, fast delivery', 9, 'Electronics', 3, 3, '789 Oak St.'),
(10, '555-555-5555', 'amy.brown@example.com', 5, 10, 3, 'SAVE10', 'Product was not as described', 10, 'Clothing', 1, 1, '456 Elm St.'),
(11, '555-123-4567', 'michael.chang@example.com', 6, 1, 4, 'FREESHIP', 'Product arrived on time, but packaging was damaged', 11, 'Home', 2, 2, '123 Main St.'),
(12, '555-555-1212', 'emily.wilson@example.com', 6, 2, 5, 'DISC20', 'Great product, fast delivery', 12, 'Books', 3, 1, '456 Broadway');





BEGIN TRANSACTION;
CREATE TABLE TABLE_order_tracking 
(
	OrderID INT IDENTITY(1,1),
	Order_code VARCHAR(15) UNIQUE NOT NULL,
	Product INT NOT NULL,
	Product_category INT NOT NULL,
	Tracking_system_message VARCHAR(50) NOT NULL,
	CONSTRAINT pk_TABLE_order_tracking_OrderID PRIMARY KEY(OrderID),
	CONSTRAINT fk_TABLE_order_tracking_TABLE_product_category 
	FOREIGN KEY (Product_category)  REFERENCES TABLE_product_category(Product_categoryID),
	CONSTRAINT fk_TABLE_order_tracking_TABLE_products
	FOREIGN KEY (Product)  REFERENCES TABLE_products(ProductID)

)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END



INSERT INTO TABLE_order_tracking (Order_code, Product, Product_category, Tracking_system_message)
VALUES ('ORDER12345', 1, 1, 'Your order has been received.'),
       ('ORDER12346', 2, 2, 'Your order is being prepared for shipment.'),
       ('ORDER12347', 3, 1, 'Your order has been shipped.'),
       ('ORDER12348', 4, 3, 'Your order is out for delivery.'),
       ('ORDER12349', 5, 2, 'Your order has been delivered.'),
       ('ORDER12350', 6, 1, 'Your order has been received.'),
       ('ORDER12351', 7, 2, 'Your order is being prepared for shipment.'),
       ('ORDER12352', 8, 3, 'Your order has been shipped.'),
       ('ORDER12353', 9, 1, 'Your order is out for delivery.'),
       ('ORDER12354', 10, 2, 'Your order has been delivered.'),
       ('ORDER12355', 11, 1, 'Your order has been received.'),
       ('ORDER12356', 12, 2, 'Your order is being prepared for shipment.'),
       ('ORDER12357', 13, 3, 'Your order has been shipped.'),
       ('ORDER12358', 14, 1, 'Your order is out for delivery.'),
       ('ORDER12359', 15, 2, 'Your order has been delivered.');


BEGIN TRANSACTION;
CREATE TABLE TABLE_checks_or_gifts_given
(
	Check_GiftsID INT IDENTITY(1,1),
	Contracted_company_name VARCHAR(20) NOT NULL,
	Employee VARCHAR(15) NOT NULL,
	CONSTRAINT pk_TABLE_checks_or_gifts_given_Check_GiftsID PRIMARY KEY (Check_GiftsID)

)

IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END


INSERT INTO TABLE_checks_or_gifts_given (Contracted_company_name, Employee)
VALUES ('ABC Inc.', 'John Doe'),
       ('XYZ Ltd.', 'Jane Smith'),
       ('DEF Corp.', 'Bob Johnson'),
       ('GHI LLC', 'Susan Brown'),
       ('JKL Co.', 'David Lee'),
       ('MNO Inc.', 'Emily Davis'),
       ('PQR Ltd.', 'Michael Wilson'),
       ('STU Corp.', 'Sarah Kim'),
       ('VWX LLC', 'Jason Chen'),
       ('YZA Co.', 'Linda Wu'),
       ('BCD Inc.', 'Kevin Lee'),
       ('EFG Ltd.', 'Amanda Nguyen'),
       ('HIJ Corp.', 'Brian Lee'),
       ('KLM LLC', 'Karen Chang'),
       ('NOP Co.', 'Justin Lee')



BEGIN TRANSACTION;
CREATE TABLE TABLE_employee_details
(
	EmployeeID INT IDENTITY(1,1),
	Employee_Identification_card_number BIGINT  NOT NULL,
	Employee_name VARCHAR(50) NOT NULL,
	Employee_age  TINYINT NOT NULL,
	Employee_work_years TINYINT CHECK(Employee_work_years>=2)  NOT NULL ,
	Employee_email VARCHAR(50) NOT NULL,
	Employee_phone_number VARCHAR(11) DEFAULT '0' NOT NULL,
	Employee_company_name VARCHAR(30) NOT NULL,
	Employee_check_or_gift_type VARCHAR(20) NOT NULL,
	Employee_Department VARCHAR(30) NOT NULL,
	Employee_Nationality VARCHAR(20) NOT NULL,
	Created_at DATE NOT NULL,
	CONSTRAINT pk_TABLE_employee_details_EmployeeID PRIMARY KEY(EmployeeID)
);

IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END



INSERT INTO TABLE_employee_details
(Employee_Identification_card_number, Employee_name, Employee_age, Employee_work_years, Employee_email, Employee_phone_number, Employee_company_name, Employee_check_or_gift_type, Employee_Department, Employee_Nationality, Created_at)
VALUES
(1234567890123456789, 'John Doe', 32, 5, 'john.doe@example.com', '5551234', 'ABC Company', 'Check', 'Marketing', 'USA', '2023-04-20'),
(2345678901234567890, 'Jane Smith', 25, 2, 'jane.smith@example.com', '5555678', 'XYZ Company', 'Gift', 'IT', 'Canada', '2023-04-20'),
(3456789012345678901, 'Ahmed Khan', 28, 4, 'ahmed.khan@example.com', '5559876', 'ABC Company', 'Check', 'HR', 'Pakistan', '2023-04-20'),
(4567890123456789012, 'Emma Lee', 30, 6, 'emma.lee@example.com', '5552345', 'XYZ Company', 'Gift', 'Finance', 'UK', '2023-04-20'),
(5678901234567890123, 'Juan Rodriguez', 35, 8, 'juan.rodriguez@example.com', '5556789', 'ABC Company', 'Check', 'Sales', 'Mexico', '2023-04-20'),
(6789012345678901234, 'Sophie Dupont', 27, 3, 'sophie.dupont@example.com', '5553456', 'XYZ Company', 'Gift', 'Marketing', 'France', '2023-04-20'),
(7890123456789012345, 'Kim Tae-woo', 31, 5, 'kim.taewoo@example.com', '5558901', 'ABC Company', 'Check', 'IT', 'South Korea', '2023-04-20');



BEGIN TRANSACTION;

CREATE TABLE TABLE_employee_departments_details
(
Departments_detailsID INT IDENTITY(1,1),
Department_name VARCHAR(50) NOT NULL, 
Employee INT NOT NULL,	
Department_employee_number SMALLINT NOT NULL,
Deparment_supervisor_name VARCHAR(30) NOT NULL,
Department_job_title VARCHAR(50) NOT NULL,
Department_job_role INT NOT NULL,
Department_average_salary INT NOT NULL,
Department_performance_rating VARCHAR(30) NOT NULL,
Department_vacation_days_of_year TINYINT NOT NULL,
Department_sick_leave_days_of_year TINYINT NOT NULL,
Department_total_overtime_hours TINYINT NOT NULL,
Department_email VARCHAR(50) NOT NULL,
Department_phone VARCHAR(11) DEFAULT '0' NOT NULL,
CONSTRAINT pk_TABLE_employee_departments_details_Departments_detailsID 
PRIMARY KEY (Departments_detailsID),
CONSTRAINT fk_TABLE_employee_departments_details_TABLE_department_job_role_details
FOREIGN KEY (Department_job_role) REFERENCES TABLE_department_job_role_details(Job_roleID),
CONSTRAINT fk_TABLE_employee_departments_details_TABLE_employee_details 
FOREIGN KEY (Employee) REFERENCES TABLE_employee_details(EmployeeID)
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END


INSERT INTO TABLE_employee_departments_details
(Department_name, Employee, Department_employee_number, Deparment_supervisor_name,
Department_job_title, Department_job_role, Department_average_salary, Department_performance_rating,
Department_vacation_days_of_year, Department_sick_leave_days_of_year, Department_total_overtime_hours,
Department_email, Department_phone)
VALUES
('Sales', 5, 15, 'John Smith', 'Sales Manager', 1, 60000, 'Excellent', 20, 10, 5, 'sales@company.com', '555-1234'),
('Marketing', 7, 10, 'Jane Doe', 'Marketing Coordinator', 2, 40000, 'Good', 15, 5, 3, 'marketing@company.com', '555-5678'),
('IT', 9, 20, 'Bob Johnson', 'IT Director', 3, 80000, 'Excellent', 25, 10, 8, 'it@company.com', '555-2468'),
('Human Resources', 10, 8, 'Sara Lee', 'HR Manager', 4, 55000, 'Excellent', 18, 8, 4, 'hr@company.com', '555-1357'),
('Finance', 2, 12, 'Mike Smith', 'Finance Manager', 5, 70000, 'Good', 22, 12, 7, 'finance@company.com', '555-7890'),
('Operations', 6, 15, 'David Kim', 'Operations Manager', 6, 65000, 'Good', 20, 10, 5, 'operations@company.com', '555-4321'),
('Customer Service', 3, 25, 'Mary Johnson', 'Customer Service Manager', 7, 50000, 'Fair', 15, 8, 4, 'customerservice@company.com', '555-9876'),
('Engineering', 1, 30, 'Kevin Lee', 'Engineering Manager', 8, 90000, 'Excellent', 28, 10, 9, 'engineering@company.com', '555-3690'),
('Research and Development', 4, 18, 'Alex Kim', 'Research and Development Manager', 9, 75000, 'Good', 20, 8, 6, 'randd@company.com', '555-7530');

BEGIN TRANSACTION;
Create TABLE TABLE_supervisor_details
(
	
	SupervisorID INT IDENTITY(1,1),
	Department INT NOT NULL,
	Supervisor_name VARCHAR(20) NOT NULL,
	Supervisor_age TINYINT CHECK(Supervisor_age>=18 AND Supervisor_age<=70),
	Supervisor_country VARCHAR(20) NOT NULL,
	Supervisor_email VARCHAR(30) NOT NULL,
	Supervisor_phone VARCHAR(11) DEFAULT'0' NOT NULL,
	Supervisor_performance_rating VARCHAR(15) NOT NULL,
	CONSTRAINT pk_TABLE_supervisor_details_SupervisorID
	PRIMARY KEY (SupervisorID),
	CONSTRAINT fk_TABLE_supervisor_details_TABLE_employee_departments_details
	FOREIGN KEY (Department) REFERENCES TABLE_employee_departments_details(Departments_detailsID)
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END



INSERT INTO TABLE_supervisor_details (Department, Supervisor_name, Supervisor_age, Supervisor_country, Supervisor_email, Supervisor_phone, Supervisor_performance_rating)
VALUES (1, 'John Smith', 30, 'USA', 'john.smith@example.com', '5551234567', 'Excellent'),
(2, 'Jane Doe', 40, 'Canada', 'jane.doe@example.com', '5559876543', 'Good'),
(3, 'Bob Johnson', 50, 'Mexico', 'bob.johnson@example.com', '5555555555', 'Excellent'),
(1, 'Susan Lee', 45, 'USA', 'susan.lee@example.com', '5551112222', 'Average'),
(2, 'David Kim', 35, 'Canada', 'david.kim@example.com', '5554443333', 'Good'),
(3, 'Karen Martinez', 55, 'Mexico', 'karen.martinez@example.com', '5557778888', 'Excellent'),
(1, 'Mike Miller', 42, 'USA', 'mike.miller@example.com', '5553334444', 'Good'),
(2, 'Lisa Chen', 38, 'Canada', 'lisa.chen@example.com', '5556667777', 'Excellent'),
(3, 'Juan Garcia', 60, 'Mexico', 'juan.garcia@example.com', '5552221111', 'Good'),
(1, 'Amy Johnson', 28, 'USA', 'amy.johnson@example.com', '5558889999', 'Excellent'),
(2, 'Steven Lee', 44, 'Canada', 'steven.lee@example.com', '5552223333', 'Average'),
(3, 'Maria Sanchez', 48, 'Mexico', 'maria.sanchez@example.com', '5554445555', 'Good'),
(1, 'Kevin Lee', 32, 'USA', 'kevin.lee@example.com', '5556667777', 'Good'),
(2, 'Emily Wilson', 37, 'Canada', 'emily.wilson@example.com', '5559998888', 'Excellent'),
(3, 'Pedro Hernandez', 52, 'Mexico', 'pedro.hernandez@example.com', '5551113333', 'Excellent');

BEGIN TRANSACTION;
CREATE TABLE TABLE_department_job_role_details
(
Job_roleID INT IDENTITY(1,1),
Job_role_name VARCHAR(50) NOT NULL,
Job_description VARCHAR(100) NOT NULL,
Job_specification VARCHAR(100) NOT NULL,
CONSTRAINT pk_TABLE_department_job_role_details_Job_roleID 
PRIMARY KEY (Job_roleID)
)

IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END


INSERT INTO TABLE_department_job_role_details (Job_role_name, Job_description, Job_specification)
VALUES 
('Software Developer', 'Responsible for developing software applications', 'Minimum of 2 years experience in software development'),
('Marketing Specialist', 'Responsible for promoting and advertising the company', 'Minimum of 3 years experience in marketing'),
('Human Resources Manager', 'Responsible for managing employee relations and recruitment', 'Minimum of 5 years experience in HR'),
('Accountant', 'Responsible for managing company finances', 'Minimum of 3 years experience in accounting'),
('Sales Representative', 'Responsible for selling company products and services', 'Minimum of 2 years experience in sales'),
('Software Developer', 'Responsible for developing back-end', 'Minimum of 2 years experience in software development'),
('Marketing Specialist', 'Responsible for sales', 'Minimum of 3 years experience in marketing'),
('Human Resources Manager', 'Responsible for human relations', 'Minimum of 5 years experience in HR'),
('Accountant', 'Responsible for investment', 'Minimum of 3 years experience in accounting'),
('Sales Representative', 'Responsible for discounts', 'Minimum of 2 years experience in sales');





BEGIN TRANSACTION;

CREATE TABLE TABLE_DEPARTMENT_SWOT_ANALYSIS
(
Department INT IDENTITY(1,1),
Department_strengths VARCHAR(100) NOT NULL,
Department_weakness   VARCHAR(100) NOT NULL,
Department_oppurtinites VARCHAR(100) NOT NULL,
Department_threats VARCHAR(100) NOT NULL,
Creation_Date DATE
CONSTRAINT fk_TABLE_employee_departments_details_TABLE_DEPARTMENT_SWOT_ANALYSIS 
FOREIGN KEY (Department) REFERENCES TABLE_employee_departments_details(Departments_detailsID)
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END


INSERT INTO TABLE_DEPARTMENT_SWOT_ANALYSIS
(Department_strengths, Department_weakness, Department_oppurtinites, Department_threats, Creation_Date)
VALUES
('Strong teamwork', 'Lack of training', 'New market opening', 'Competitor expansion', '2022-01-01'),
('High productivity', 'Poor communication', 'New product launch', 'Economic downturn', '2022-01-02'),
('Experienced staff', 'High turnover rate', 'New technology adoption', 'Regulatory changes', '2022-01-03'),
('Customer loyalty', 'Inadequate resources', 'Merger opportunity', 'Supply chain disruption', '2022-01-04'),
('Efficient processes', 'Low employee morale', 'International expansion', 'New entrants in the market', '2022-01-05'),
('Effective leadership', 'Limited budget', 'Strategic partnerships', 'Natural disasters', '2022-01-06'),
('Innovative ideas', 'Lack of diversity', 'Expansion to new regions', 'Cybersecurity threats', '2022-01-07'),
('Strong brand image', 'Poor performance metrics', 'New marketing campaigns', 'Political instability', '2022-01-08'),
('Good customer service', 'Low sales growth', 'Research and development', 'Technological obsolescence', '2022-01-09'),
('Market leader', 'Limited market share', 'New business models', 'Environmental regulations', '2022-01-10'),
('Good reputation', 'Lack of customer focus', 'New revenue streams', 'Global economic uncertainty', '2022-01-11'),
('Quality products', 'Lack of innovation', 'New customer segments', 'Geopolitical tensions', '2022-01-12'),
('Efficient supply chain', 'Obsolete technology', 'New distribution channels', 'Labour disputes', '2022-01-13'),
('Financial stability', 'Limited growth opportunities', 'New product development', 'Natural resource depletion', '2022-01-14'),
('Strong partnerships', 'Poor brand recognition', 'New marketing channels', 'Legal disputes', '2022-01-15'),
('Efficient logistics', 'Inadequate infrastructure', 'New talent acquisition', 'Pandemic-related disruptions', '2022-01-16'),
('Good supplier relationships', 'Low customer retention', 'New revenue models', 'Currency fluctuations', '2022-01-17'),
('Cost-effective operations', 'Lack of market research', 'New market segments', 'Changes in trade policies', '2022-01-18'),
('High-quality services', 'Poor online presence', 'New e-commerce opportunities', 'Technological failures', '2022-01-19');
   


BEGIN TRANSACTION;
CREATE TABLE TABLE_supplier_payments
(
	Supplier_paymentID INT IDENTITY(1,1),
	Supplier_bulk_purchase BIT NOT NULL,
	Supplier_Bulk_discount SMALLINT NOT NULL,
	Discounted_price SMALLINT NOT NULL,
	CONSTRAINT pk_TABLE_supplier_payments_Supplier_paymentID PRIMARY KEY(Supplier_paymentID)
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END

INSERT INTO TABLE_supplier_payments
(Supplier_bulk_purchase, Supplier_Bulk_discount, Discounted_price)
VALUES
(1, 5, 475),
(1, 10, 450),
(1, 15, 425),
(0,10, 500),
(1, 20, 400),
(0, 30, 550),
(1, 25, 375),
(1, 30, 350),
(0, 45, 600),
(1, 35, 325),
(0, 45, 650),
(1, 40, 300),
(1, 45, 275),
(0, 50, 700),
(1, 50, 250),
(1, 55, 225),
(0, 25, 750),
(1, 60, 200),
(1, 65, 175),
(0, 30, 800);


BEGIN TRANSACTION;
CREATE TABLE TABLE_contracted_companies_detail_list
(
	CompanyID INT IDENTITY(1,1),
	Company_name VARCHAR(50) NOT NULL,
	Company_foundatiton_year SMALLINT NOT NULL CHECK(Company_foundatiton_year<2000),
	Company_employee_number BIGINT NOT NULL CHECK(Company_employee_number>50000),
	Agreement_period_of_year_with_the_company TINYINT CHECK(Agreement_period_of_year_with_the_company>=2 AND Agreement_period_of_year_with_the_company<=5) NOT NULL,
	Number_of_countries_served_by_the_company TINYINT CHECK(Number_of_countries_served_by_the_company>5) NOT NULL,
	Gifts_or_checks_given_to_company_employees BIGINT NOT NULL,
	Annual_net_profit_of_companies BIGINT NOT NULL,
	Internal_company_merit_and_happiness_ratio TINYINT NOT NULL CHECK(Internal_company_merit_and_happiness_ratio>=50),
	Company_adresses VARCHAR(100) NOT NULL,
	Gifts_checks INT NOT NULL,
	Company_Human_Resources_email VARCHAR(50) NOT NULL,
	CONSTRAINT pk_TABLE_contracted_companies_detail_list_CompanyID PRIMARY KEY (CompanyID),
	CONSTRAINT fk_TABLE_contracted_companies_detail_list_TABLE_checks_or_gifts_given
	FOREIGN KEY (Gifts_checks) REFERENCES TABLE_checks_or_gifts_given(Check_GiftsID)
)
IF @@ERROR <> 0
BEGIN
ROLLBACK TRANSACTION;
PRINT 'An error occurred, the transaction was rolled back.';
END
ELSE
BEGIN
COMMIT TRANSACTION;
PRINT 'The operation completed successfully.';
END

INSERT INTO TABLE_contracted_companies_detail_list
(Company_name, Company_foundatiton_year, Company_employee_number, Agreement_period_of_year_with_the_company, Number_of_countries_served_by_the_company, Gifts_or_checks_given_to_company_employees, Annual_net_profit_of_companies, Internal_company_merit_and_happiness_ratio, Company_adresses, Gifts_checks, Company_Human_Resources_email)
VALUES
('ABC Company', 1998, 60000, 3, 10, 500000, 1000000000, 75, '123 Main St, Anytown, USA', 1, 'hr@abccompany.com'),
('XYZ Corporation', 1995, 75000, 5, 20, 750000, 1500000000, 80, '456 Oak Ave, Anytown, USA', 2, 'hr@xyzcorp.com'),
('DEF Enterprises', 1997, 80000, 4, 15, 800000, 1200000000, 70, '789 Elm St, Anytown, USA', 3, 'hr@defenterprises.com'),
('LMN Inc', 1999, 55000, 2, 8, 250000, 800000000, 65, '321 Pine St, Anytown, USA', 4, 'hr@lmninc.com'),
('PQR Industries', 1996, 70000, 3, 12, 400000, 900000000, 70, '987 Maple Ave, Anytown, USA', 5, 'hr@pqrindustries.com'),
('EFG Company', 1998, 65000, 4, 18, 600000, 1100000000, 75, '654 Cedar Blvd, Anytown, USA', 6, 'hr@efgcompany.com'),
('HIJ Corporation', 1995, 80000, 5, 22, 1000000, 1700000000, 85, '321 Oak St, Anytown, USA', 7, 'hr@hijcorp.com'),
('RST Enterprises', 1997, 90000, 4, 14, 700000, 1300000000, 80, '789 Walnut Ave, Anytown, USA', 8, 'hr@rstenterprises.com'),
('UVW Inc', 1999, 60000, 2, 10, 300000, 850000000, 70, '456 Birch St, Anytown, USA', 9, 'hr@uvwinc.com'),
('GHI Industries', 1996, 75000, 3, 11, 350000, 950000000, 75, '654 Elm Ave, Anytown, USA', 10, 'hr@ghiindustries.com'),
('MNO Company', 1998, 70000, 4, 16, 550000, 1050000000, 70, '789 Maple St, Anytown, USA', 11, 'hr@mno.com'),
('JKL Corporation', 1995, 85000, 5, 21, 900000, 1600000000, 85, '123 Pine Ave, Anytown, USA', 12, 'hr@jklcorp.com')