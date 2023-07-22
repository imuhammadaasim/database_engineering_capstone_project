DELIMITER //

CREATE PROCEDURE CheckBooking(IN booking_date DATE, IN table_number INT)
BEGIN
    DECLARE booking_status VARCHAR(20);

    -- Check if the table is already booked on the given date
    SELECT IFNULL(BookingID, 0) INTO booking_status
    FROM Bookings
    WHERE BookingDate = booking_date AND TableNumber = table_number
    LIMIT 1;

    -- Check the booking status and return appropriate message
    IF booking_status = 0 THEN
        SELECT 'Table is available for booking on ' AS Status, booking_date AS BookingDate, table_number AS TableNumber;
    ELSE
        SELECT 'Table is already booked on ' AS Status, booking_date AS BookingDate, table_number AS TableNumber, 'with Booking ID ' AS BookingID, booking_status AS BookingID;
    END IF;
END //

DELIMITER ;
