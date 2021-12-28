--1. Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT FirstName, LastName, Country 
FROM Customer
WHERE Country != 'USA'

--2. Provide a query only showing the Customers from Brazil.
SELECT FirstName, LastName, Country
FROM Customer
WHERE Country = 'Brazil'

--3. Provide a query showing the Invoices of customers who are from Brazil. 
--The resultant table should show the customer's full name, Invoice ID, Date of the invoice, and billing country.
SELECT FirstName, LastName, InvoiceID, InvoiceDate, BillingCountry
FROM Customer, Invoice
WHERE BillingCountry = 'Brazil'

--4. Provide a query showing only the Employees who are Sales Agents.
SELECT FirstName, LastName, Title
FROM Employee
WHERE Title = 'Sales Support Agent'

--5. Provide a query showing a unique list of billing countries from the Invoice table.
SELECT DISTINCT BillingCountry 
FROM Invoice

--6. Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
SELECT Invoice.*, Employee.FirstName, Employee.LastName, Customer.SupportRepId
FROM Invoice, Employee
INNER JOIN Customer
ON Employee.EmployeeId = Customer.SupportRepId

--JINGJING's CODE:
-- SELECT Invoice.InvoiceId, InvoiceDate, Employee.FirstName + Employee.LastName AS SalesAgents, Employee.Title FROM Invoice, Employee, Customer 
-- WHERE Invoice.CustomerId = Customer.CustomerId AND Employee.EmployeeId = Customer.SupportRepId AND Employee.Title = 'Sales Support Agent';


--7. Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
--************ KEEP WORKING ************* NEED COUNTRY ****************
SELECT Invoice.Total, Customer.FirstName, Customer.LastName, Employee.FirstName, Employee.LastName
FROM Invoice, Customer
INNER JOIN Employee
ON Customer.SupportRepId = Employee.EmployeeId



--8. How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?
--MELINDA's CODE:
-- SELECT COUNT(InvoiceDate) AS TotalInvoices, SUM(total) AS TotalSales
-- FROM Invoice
-- WHERE YEAR(InvoiceDate)=2009
-- OR YEAR(InvoiceDate)=2011;
--***********Richard asks for different totals! ***************





-- SELECT column_name(s)
-- FROM table1
-- INNER JOIN table2
-- ON table1.column_name = table2.column_name;

-- SELECT column_name(s)
-- FROM table1
-- LEFT JOIN table2
-- ON table1.column_name = table2.column_name;

-- SELECT column_name(s)
-- FROM table1
-- RIGHT JOIN table2
-- ON table1.column_name = table2.column_name;

-- SELECT column_name(s)
-- FROM table1
-- FULL OUTER JOIN table2
-- ON table1.column_name = table2.column_name
-- WHERE condition;