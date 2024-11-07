CREATE TABLE Categories (
    Category_ID INT,
    Category_Name VARCHAR(100) NOT NULL,
    PRIMARY KEY (Category_ID)
);
CREATE TABLE Customer(
  Customer_ID INT,
  Customer_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  mobile_no VARCHAR(15),
  PRIMARY KEY (Customer_ID)
 );
CREATE TABLE Inventory(
    Inventory_ID INT,
    Product_ID INT,
    Quantity VARCHAR(50) NOT NULL,
    PRIMARY KEY (Inventory_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
 );
CREATE TABLE Orders (
    Order_ID INT,
    Order_Date DATE NOT NULL,
    Total_amount DECIMAl(10,2) NOT NULL,
    Customer_ID INT,
    Payment_ID INT,
    PRIMARY KEY (Order_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Payment_ID) REFERENCES Payment(Payment_ID)
);
CREATE TABLE Payments (
    Payment_ID INT,
    Order_ID INT,
    PaymentDate DATE NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentMethod VARCHAR(50) NOT NULL,
    PRIMARY KEY (Payment_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);
CREATE TABLE Products (
    Product_ID INT,
    Product_Name VARCHAR(100) NOT NULL,
    Category_ID INT,
    Price DECIMAL(10, 2) NOT NULL,
    Supplier_ID INT,
    PRIMARY KEY (Product_ID),
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)
);
CREATE TABLE Supplier(
    Supplier_ID INT,
    Supplier_name VARCHAR(100),
    Contact_info VARCHAR(50),
    PRIMARY KEY (Supplier_ID)
 );