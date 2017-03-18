1.
Select BOOK_COPIES.No_Of_Copies
from dbo.BOOK_COPIES
INNER JOIN LIBRARY_BRANCH 
ON LIBRARY_BRANCH.BranchID=BOOK_COPIES.BranchID
INNER JOIN dbo.BOOK
ON BOOK.BookID=BOOK_COPIES.BookID
WHERE LIBRARY_BRANCH.Branchname='Sharpstown' 
AND Book.Title='The Lost Tribe'

2.
Select BOOK_COPIES.No_Of_Copies, LIBRARY_BRANCH.Branchname
from dbo.BOOK_COPIES
INNER JOIN LIBRARY_BRANCH 
ON LIBRARY_BRANCH.BranchID=BOOK_COPIES.BranchID
INNER JOIN dbo.BOOK
ON BOOK.BookID=BOOK_COPIES.BookID
WHERE Book.Title='The Lost Tribe'

3.
Select BORROWER.Name
from dbo.BORROWER
INNER JOIN BOOK_LOANS 
ON BOOK_LOANS.CardNo=BORROWER.CardNo
WHERE BORROWER.CardNo NOT IN (BOOK_LOANS.CardNo)

4.
Select Book.Title, BORROWER.Name, BORROWER.Address
from dbo.BOOK
INNER JOIN BOOK_LOANS
ON BOOK.BookID=BOOK_LOANS.BookId
INNER JOIN LIBRARY_BRANCH
ON LIBRARY_BRANCH.BranchID=BOOK_LOANS.BranchId
INNER JOIN BORROWER
ON BORROWER.CardNo=BOOK_LOANS.CardNo
WHERE BOOK_LOANS.DueDate='2017-03-17'
AND LIBRARY_BRANCH.Branchname='Sharpstown'

5.
Select LIBRARY_BRANCH.Branchname, COUNT (BOOK_LOANS.BookID) AS 'TotalCheckouts'
from dbo.BOOK_LOANS
INNER JOIN LIBRARY_BRANCH
ON LIBRARY_BRANCH.BranchID=BOOK_LOANS.BranchId
GROUP BY LIBRARY_BRANCH.Branchname

6.
Select BORROWER.Name, BORROWER.Address, COUNT (BOOK_LOANS.CardNo) AS 'TotalCheckouts'
from dbo.BORROWER
INNER JOIN BOOK_LOANS
ON BORROWER.CardNo=BOOK_LOANS.CardNo
GROUP BY BORROWER.Name, BORROWER.Address
HAVING COUNT(BOOK_LOANS.CardNo)>=5 

7.
Select Book.Title, BOOK_COPIES.No_Of_Copies
from dbo.BOOK
INNER JOIN BOOK_COPIES
ON BOOK.BookID=BOOK_COPIES.BookId
INNER JOIN LIBRARY_BRANCH
ON LIBRARY_BRANCH.BranchID=BOOK_COPIES.BranchId
INNER JOIN BOOK_AUTHORS
ON BOOK.BookID=BOOK_AUTHORS.BookID
WHERE BOOK_AUTHORS.AuthorName='Stephen King'
AND LIBRARY_BRANCH.Branchname='Central'

8. (Stored Procedure)

CREATE PROCEDURE CopiesofTheLostTribe @Branch varchar(30)
AS

Select BOOK_COPIES.No_Of_Copies
from dbo.BOOK_COPIES
INNER JOIN LIBRARY_BRANCH 
ON LIBRARY_BRANCH.BranchID=BOOK_COPIES.BranchID
INNER JOIN dbo.BOOK
ON BOOK.BookID=BOOK_COPIES.BookID
WHERE LIBRARY_BRANCH.Branchname=@Branch 
AND Book.Title='The Lost Tribe'

DECLARE @Branch varchar(30)
EXEC CopiesofTheLostTribe
@Branch='Sharpstown'
PRINT @Branch

