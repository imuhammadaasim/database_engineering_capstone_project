select Customers.CustomerID, Customers.CustomerName, 
Orders.OrderID, Orders.TotalCost, Menu.MenuName,
MenuItems.CourseName, MenuItems.StarterName
from Orders 
inner join Customers on Orders.CustomerID = Customers.CustomerID
inner join Menu on Orders.MenuID = Menu.MenuID
inner join MenuItems on Menu.MenuID = MenuItems.MenuID
where TotalCost > 50
order by TotalCost asc;