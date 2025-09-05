USE salesDB;

-- QUESTION 1
-- Query to retrieve employee information with office details
SELECT 
    e.firstName,      -- Employee's first name from employees table
    e.lastName,       -- Employee's last name from employees table  
    e.email,          -- Employee's email address from employees table
    e.officeCode      -- Office code assigned to the employee
FROM 
    employees e       -- 'e' is alias for employees table
INNER JOIN 
    offices o         -- 'o' is alias for offices table
ON 
    e.officeCode = o.officeCode;  -- Join condition: match officeCode in both tables

-- QUESTION 2
-- Query to retrieve product information with product line details
SELECT 
    p.productName,    -- Name of the product from products table
    p.productVendor,  -- Vendor/manufacturer of the product
    p.productLine     -- Product line/category of the product
FROM 
    products p        -- 'p' is alias for products table
LEFT JOIN 
    productlines pl   -- 'pl' is alias for productlines table  
ON 
    p.productLine = pl.productLine;  -- Join condition: match productLine in both tables

-- QUESTION 3
-- Query to retrieve order information with customer details using RIGHT JOIN
SELECT 
    o.orderDate,        -- Date when the order was placed
    o.shippedDate,      -- Date when the order was shipped (NULL if not shipped yet)
    o.status,           -- Current status of the order (e.g., 'Shipped', 'Cancelled')
    o.customerNumber    -- Customer identifier who placed the order
FROM 
    customers c         -- 'c' is alias for customers table
RIGHT JOIN 
    orders o            -- 'o' is alias for orders table
ON 
    c.customerNumber = o.customerNumber  -- Join condition: match customerNumber in both tables
LIMIT 10;               -- Restrict results to first 10 records