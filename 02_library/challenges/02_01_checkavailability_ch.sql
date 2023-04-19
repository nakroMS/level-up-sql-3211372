-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.


SELECT COUNT(*)
FROM BOOKS b
WHERE b.title = 'Dracula'


SELECT COUNT(*)
FROM BOOKS b
LEFT JOIN Loans l
ON b.BookID = l.BookID
WHERE b.title = 'Dracula'
AND l.ReturnedDate IS NULL

SELECT 
(SELECT COUNT(b.title)
FROM BOOKS b
WHERE b.title = 'Dracula')-
(SELECT COUNT(b.title)
FROM BOOKS b
LEFT JOIN Loans l
ON b.BookID = l.BookID
WHERE b.title = 'Dracula'
AND l.ReturnedDate IS NULL) as AvailableCount;