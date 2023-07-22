DELIMITER //

CREATE PROCEDURE AddValidBooking(IN booking_date DATE, IN table_number INT, IN customer_name VARCHAR(50))
BEGIN
    DECLARE table_status INT;
    
    START TRANSACTION;
    
    -- Check if the table is already booked for the given date
    SELECT COUNT(*) INTO table_status
    FROM Bookings
    WHERE BookingDate = booking_date AND TableNumber = table_number;
    
    IF table_status > 0 THEN
        -- Table is already booked, rollback the transaction
        ROLLBACK;
    ELSE
        -- Table is available, add a new booking record
        INSERT INTO Bookings (CustomerID, BookingDate, TableNumber, StaffID)
        VALUES (customer_name, booking_date, table_number, NULL);
        
        -- Commit the transaction
        COMMIT;
    END IF;
END //

DELIMITER ;
