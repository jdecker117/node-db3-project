-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select ProductName, CategoryName from Product
join Category on categoryid = category.id
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
Select id, companyname from [Order]
join Shipper on shipvia = shipper.id
where orderdate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
Select productname, quantity from OrderDetail
join Product on productid = product.id
where orderid = 10251
order by productname
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
Select [order].id as OrderID, companyname as CompanyName, lastname as Employee_LastName from [Order]
join Employee on employeeid = employee.id
join Customer on customerid = customer.id