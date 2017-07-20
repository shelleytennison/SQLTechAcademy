USE db_library

/* How many copues of the book titled "The Lost Tribe" are owned by the 
library branch whose name is "Sharpstown"? */

CREATE PROCEDURE FINDTITLEANDBRANCH @BookTitle VARCHAR(30) = 'The Lost Tribe',
 @Branch VARCHAR(30)= 'Sharpstown'
 AS
	SELECT tbl_book.Title, tbl_library_Branch.BranchName, tbl_book_copies.NO_OF_COPIES
	FROM tbl_Book_Copies
	INNER JOIN tbl_Book ON 
	tbl_book.Book_ID = tbl_book_copies.BookID
	INNER JOIN tbl_library_Branch ON 
	tbl_book_copies.BranchID = tbl_Library_Branch.Branch_ID
	WHERE tbl_Book.Title = @BookTitle
	AND tbl_library_branch.BranchName= @Branch
;
	EXEC FINDTITLEANDBRANCH @BookTitle='The Lost Tribe', @Branch= 'Sharpstown';

/* How many copies of the book titled "The Lost Tribe are owned by each Library? */

	CREATE PROCEDURE FINDTITLEALLBRANCHES @BookTitle VARCHAR(30) = 'The Lost Tribe'
	AS
	SELECT tbl_Book.Title, tbl_Library_Branch.BranchName, tbl_Book_Copies.NO_OF_COPIES
	FROM tbl_Book_Copies
	INNER JOIN tbl_Book ON
	tbl_Book.Book_ID = tbl_Book_Copies.BookID
	INNER JOIN tbl_Library_Branch ON 
	tbl_Book_Copies.BranchID = tbl_Library_Branch.Branch_ID
	WHERE tbl_Book.Title = @BookTitle
;
	EXEC FINDTITLEALLBRANCHES @BookTitle = 'The Lost Tribe'

/* Retrieve the names of all borrowers who
 do not have any books checked out. */


 CREATE PROCEDURE BORROWERSWITHNOBOOKSOUT @BooksOut VARCHAR(30) = '0'
 AS
	SELECT tbl_Borrower.CardNO, tbl_Borrower.Name, tbl_Book_Loans.Book_ID
	FROM tbl_Borrower INNER JOIN tbl_Book_Loans ON
	tbl_Borrower.CardNO = tbl_Book_Loans.CardNO
	WHERE tbl_Book_Loans.Book_ID IS NULL
;

EXEC BORROWERSWITHNOBOOKSOUT @booksout = '0'

 /* For each book that is loaned out from the "Sharpstown" 
 branch AND whose due date is today, retrieve the book title,
 the borrower's name, and the borrower's address. */

 CREATE PROCEDURE FINDBOOKBYBRANCHANDDUEDATE @Branch VARCHAR(30) = 'Sharpstown', 
 @Duedate VARCHAR(30) = '7-19-2017'
 AS
	SELECT tbl_Book.Title, tbl_Book.Book_ID, tbl_Borrower.Name,
	tbl_Borrower.[Address]
	FROM tbl_Library_Branch INNER JOIN tbl_Book_Loans ON
	tbl_Library_Branch.Branch_ID = tbl_Book_Loans.Book_ID
	INNER JOIN tbl_Book ON tbl_Book_Loans.Book_ID = tbl_Book.Book_ID
	INNER JOIN tbl_Borrower ON tbl_Book_Loans.CardNO = tbl_Borrower.CardNO
	WHERE tbl_Library_Branch.BranchName = @Branch
	AND tbl_Book_Loans.DueDate = @Duedate
;

EXEC FINDBOOKBYBRANCHANDDUEDATE @Branch = 'Sharpstown', @DueDate = '7-19-2017';

 /* For each library branch, retrieve the branch name and 
 the total number of books loaned out from that branch. */
 
 SELECT tbl_Library_Branch.BranchName 
	COUNT FROM tbl_Library_Branch INNER JOIN tbl_Book_Loans ON
	tbl_Library_Branch.Branch_ID = tbl_Book_Loans.Branch_ID
	GROUP BY tbl_Library_Branch.BranchName
;


 /* Retrieve the names, addresses, and number of books checked
 out for all borrowers who have more than five books checked out. */

 CREATE PROCEDURE BORROWERWITHBOOKSOUT @NO_OF_BOOKS_BORROWED INT = 5
 AS
	SELECT tbl_Borrower.Name, tbl_Borrower.[Address]
	COUNT FROM tbl_Borrower INNER JOIN tbl_Book_Loans ON
	tbl_Borrower.CardNO = tbl_Book_Loans.CardNO
	GROUP BY tbl_Borrower.Name, tbl_Borrower.[Address]
	HAVING COUNT(*) > @NO_OF_BOOKS_BORROWED
;

EXEC BORROWERWITHBOOKSOUT @NO_OF_BOOKS_BORROWED = 5 ;


 /* For each book authored by "Stephen King",  retrieve the title and
 that is owned by the library branch "Central. */


CREATE PROCEDURE FINDBOOKBYAUTHORANDBRANCH @Author VARCHAR(30) = 'Stephen King', 
@Branch VARCHAR(30) = 'Central'
AS
	SELECT tbl_Book.Title, tbl_Book_Copies.NO_OF_COPIES FROM 
	tbl_Book INNER JOIN tbl_Book_Authors ON
	tbl_Book.Book_ID = tbl_Book_Authors.Book_ID
	INNER JOIN tbl_Book_Copies ON tbl_Book_Copies.BookID = tbl_Book.Book_ID
	INNER JOIN tbl_Library_Branch ON 
	tbl_Book_Copies.BranchID = tbl_Library_Branch.Branch_ID
	WHERE tbl_Book_Authors.AuthorName = @Author
	AND tbl_Library_Branch.BranchName = @Branch
;


EXEC FINDBOOKBYAUTHORANDBRANCH @Author = 'Stephen King', @Branch = 'Central'