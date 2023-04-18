-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

SELECT * FROM Customers
WHERE email = 'smac@kinetecoinc.com';

INSERT INTO Customers (FirstName, LastName, Email, Phone)
Values ('Sam', 'McAdams', 'smac@kinetecoinc.com', '555-555-1232');

INSERT INTO Reservations (CustomerID, Date, PartySize)
Values (102,'2022-08-12 18:00:00', 5);

SELECT * FROM Reservations
ORDER BY Date DESC
LIMIT 1

