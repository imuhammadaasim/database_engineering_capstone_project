DELIMITER //

CREATE PROCEDURE CancelBooking(
    IN booking_id INT
)
BEGIN
    DELETE FROM Bookings
    WHERE BookingID = booking_id;
    
    SELECT 'Booking Cancelled' AS Message;
END //

DELIMITER ;

