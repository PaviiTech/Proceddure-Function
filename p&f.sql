USE LibraryDB;
CREATE PROCEDURE GetBooksByAuthor(IN authorName VARCHAR(100))
BEGIN
  SELECT b.Title, b.Genre
  FROM Book b
  JOIN Author a ON b.AuthorID = a.AuthorID
  WHERE a.Name = authorName
END //

DELIMITER ;



CALL GetBooksByAuthor('Haruki Murakami');

CREATE FUNCTION TotalBooksBorrowed(memID INT)
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) INTO total
  FROM Loan
  WHERE MemberID = memID;
  RETURN total
END //

DELIMITER ;



SELECT Name, TotalBooksBorrowed(MemberID) AS BooksCount
FROM Member;