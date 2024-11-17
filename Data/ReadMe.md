# Data Read Me

## CSV
- `Ducks.csv` - Contains information about the ducks in the Duck Store. The columns in the file are as follows:
  - `DuckId` - The unique identifier for the duck.
  - `Name` - The name of the duck.
  - `Description` - A description of the duck.
  - `Price` - The price of the duck.
  - `Quantity` - The quantity of the duck in stock.
  - `Image` - The file name of the image of the duck.

## SQL Sripts
- `CreateDatabase.sql` - This script creates the database for the Duck Store project. It creates the following tables:
  - `Ducks` - Contains information about the ducks in the store.
  - `Orders` - Contains information about the orders placed by customers.
  - `Customers` - Contains information about the customers who have placed orders.
  - `OrderItems` - Contains information about the items in each order.

- `InsertData.sql` - This script inserts data into the tables created by the `CreateDatabase.sql` script. It inserts the following data:
  - `Ducks`
  - `Orders` 
  - `Customers`
  - `OrderItems`