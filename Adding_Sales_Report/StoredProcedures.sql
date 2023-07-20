delimiter //
CREATE PROCEDURE CancelOrder(IN order_number int)
begin
    delete from Orders where OrderID = order_number;
end //

delimiter ;


delimiter //
create procedure GetMaxQuantity()
begin
	select max(Quantity) as 'Maximum No of Quantity' from Orders;
end //
delimiter ;
