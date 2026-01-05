//Create data base in sql client 
CREATE DATABASE hotel_db;
// use following database 
use hotel_db; 

// Create table in data base 
CREATE TABLE reservation (
    id INT PRIMARY KEY AUTO_INCREMENT,
    guest_name VARCHAR(50) NOT NULL,
    room_no INT NOT NULL,
    contact VARCHAR(40),
    Reservation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


// insert data 
INSERT INTO reservation (guest_name, room_no, contact)
VALUES ('Umesh', 101, '9876543210');

//View All Reservations
SELECT id, guest_name, room_no, contact, Reservation_date
FROM reservation;

// Get Room Number by ID + Name
SELECT room_no
FROM reservation
WHERE id = 1
AND guest_name = 'Umesh';


// Update reservation
UPDATE reservation
SET guest_name = 'Rahul',
    room_no = 202,
    contact = '9999999999'
WHERE id = 1;


//Delete reservation
DELETE FROM reservation
WHERE id = 1;

