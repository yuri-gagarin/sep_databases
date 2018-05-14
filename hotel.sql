-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-05-10 23:41:16.508

-- I used Vertabello to first model the realtionships
-- tables
-- Table: bookings
CREATE TABLE bookings (
    id int  NOT NULL,
    guest_id int  NOT NULL,
    room_id int  NOT NULL,
    check_in_date date  NOT NULL,
    check_out_date date  NOT NULL,
    CONSTRAINT id PRIMARY KEY (id)
);

-- Table: guests
CREATE TABLE guests (
    id int  NOT NULL,
    first_name varchar(32)  NOT NULL,
    last_name varchar(32)  NOT NULL,
    email varchar(32)  NOT NULL,
    phone_number varchar(32)  NOT NULL,
    CONSTRAINT guests_pk PRIMARY KEY (id)
);

-- Table: rooms
CREATE TABLE rooms (
    id int  NOT NULL,
    floor int  NOT NULL,
    price decimal(8,2)  NOT NULL,
    CONSTRAINT rooms_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: bookings_guests (table: bookings)
ALTER TABLE bookings ADD CONSTRAINT bookings_guests
    FOREIGN KEY (guest_id)
    REFERENCES guests (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: bookings_rooms (table: bookings)
ALTER TABLE bookings ADD CONSTRAINT bookings_rooms
    FOREIGN KEY (room_id)
    REFERENCES rooms (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;


-- populate the tables with data

INSERT INTO guests (id, first_name, last_name, email, phone_number) 
VALUES (1, 'Bob', 'Dole', 'bob@gmail.com', '111-111-1111'),
       (2, 'Dave', 'Simmons', 'dave@gmail.com', '222-222-2222'),
       (3, 'Eric', 'Smith', 'eric@gmail.com', '333-333-3333'),
       (4, 'Mike', 'Jones', 'mike@gmail.com', '444-444-4444'),
       (5, 'Rob', 'Lowe', 'rob@gmail.com', '555-555-5555')


INSERT INTO rooms (id, floor, price)
VALUES (1, 1, 100.00),
       (2, 1, 100.00),
       (3, 1, 100.00),
       (4, 1, 100.00),
       (5, 2, 110.00),
       (6, 2, 110.00),
       (7, 2, 110.00),
       (8, 2, 125.50),
       (9, 2, 150.50)

INSERT INTO bookings (id, room_id, guest_id, check_in_date, check_out_date)
VALUES 
    (2, 1, 2, '2018-3-25', '2018-3-27'),
    (3, 2, 2, '2018-3-25', '2018-3-27'),
    (4, 6, 2, '2018-3-25', '2018-3-27'),
    (5, 9, 2, '2018-3-25', '2018-3-27'),
    (6, 1, 5, '2018-1-15', '2018-1-16'),
    (7, 9, 5, '2018-1-23', '2018-1-25'),
    (8, 8, 5, '2018-2-01', '2018-2-03'),
    (9, 3, 2, '2018-3-14', '2018-3-15'),
    (10, 3, 2, '2018-1-01', '2018-1-04'),
    (11, 9, 1, '2018-1-01', '2018-1-03'),
    (12, 9, 3, '2018-1-05', '2018-1-08')


-- End of file.

