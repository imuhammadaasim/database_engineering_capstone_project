DELIMITER //

CREATE PROCEDURE AddBooking(
    IN booking_id INT,
    IN customer_id INT,
    IN booking_date DATE,
    IN table_number INT
)
BEGIN
    INSERT INTO Bookings (BookingID, CustomerID, BookingDate, TableNumber, StaffID)
    VALUES (booking_id, customer_id, booking_date, table_number, NULL); -- Replace NULL with the actual StaffID if applicable

    SELECT 'New Booking Added' AS Message;
END //

DELIMITER ;

