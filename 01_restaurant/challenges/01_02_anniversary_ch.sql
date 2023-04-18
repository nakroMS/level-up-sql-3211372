-- Create a table in the database to store customer
-- responses to our anniversary invitation.
CREATE TABLE AnivAttendees (
-- Associate a customer's ID number with the number of people
-- they plan to bring in their party.
CustomerID integer,
PartySize integer
);
-- Hint: SQLite offers the INTEGER and REAL datatypes