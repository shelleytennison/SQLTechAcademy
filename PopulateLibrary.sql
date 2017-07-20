USE db_library;

USE db_library;

INSERT INTO tbl_Book
	(Book_ID, Title, PublisherName)
	VALUES
	(1, 'The Lost Tribe', 'Penguin Random House'),
	(2, 'The Shining', 'Hachette Livre'),
	(3, 'Infinite Jest', 'Harper Collins'),
	(4, 'The Bell Jar', 'Pan Macmillian'),
	(5, 'Name of the Rose', 'Faber Independent Alliance'),
	(6, 'Wild', 'Penguin Random House'),
	(7, 'A Walk in The Woods', 'Hachette Livre'),
	(8, 'Fear and Loathing in Las Vegas', 'Harper Collins'),
	(9, 'Lolita', 'Pan Macmillian'),
	(10, 'A Picture of Dorian Grey', 'Faber Independent Alliance'),
	(11, 'Book', 'Penguin Random House'),
	(12, 'Book two', 'Hachette Livre'),
	(13, 'Book Three', 'Harper Collins'),
	(14, 'Title', 'Pan Macmillian'),
	(15, 'Title two', 'Faber Independent Alliance'),
	(16, 'Title three', 'Penguin Random House'),
	(17, 'Book Name', 'Hachette Livre'),
	(18, 'Book Name two', 'Harper Collins'),
	(19, 'Titles titles', 'Pan Macmillian'),
	(20, 'Book Book Book', 'Faber Independent Alliance')
;

INSERT INTO tbl_Book_Authors
	(Book_ID, AuthorName)
	VALUES
	(1,'Mark Lee'),
	(2, 'Stephen King'),
	(3, 'David Foster Wallace'),
	(4, 'Sylvia Plath'),
	(5, 'Umberto Eco'),
	(6, 'Cheryl Strayed'),
	(7, 'Bill Bryson'),
	(8, 'Hunter S. Thompson'),
	(9, 'Vladimir Nabokov'),
	(10, 'Oscar Wilde'),
	(11, 'John Doe'),
	(12, 'Jane Doe'),
	(13, 'Ann Smith'),
	(14, 'John Smith'),
	(15, 'Sam Green'),
	(16, 'Sue Blue'),
	(17, 'Bob Pool'),
	(18, 'Another Name'),
	(19, 'Unknown'),
	(20, 'Arthur Author')
;
INSERT INTO tbl_Publisher
	(PublisherName, [Address], Phone)

	VALUES
	('Penguin Random House', '123 Arctic Ave', '916-456-9874'),
	('Hachette Livre', '13 Rue Neuf', '456-658-7521'),
	('Harper Collins', 'Harrison Avenue', '654-785-3215'),
	('Pan Macmillian', '9874 Pine Place', '253-658-9652'),
	('Faber Independent Alliance', '1234 Front Street', '530-642-2385')
;

INSERT INTO tbl_Borrower
	(CardNo, Name, [Address], Phone)
	VALUES
	('000-000-001','John Doe', '1234 Center Drive', '632-456-9874'),
	('000-000-002', 'Jane Doe', '6452 Broadway', '785-652-1542'),
	('000-000-003', 'Bill West', 'P.O. Box 038', '916-652-7854'),
	('000-000-004', 'Sue South', '954 Purple Court', '984-653-5469'),
	('000-000-005', 'Eileen East', '654 Evergreen Ave', '984-212-5422'),
	('000-000-006', 'Norman North', '142 Front Streen', '654-785-1234'),
	('000-000-007', 'Linda Lee', '674 4th Street', '985-613-6452'),
	('000-000-008', 'Ken Thompson', '214 Harris Street', '214-542-2369'),
	('000-000-009', 'Sally Smith', '452 Maple Drive', '521-745-5522'),
	('000-000-010', 'Henry Harris', '45 C Street', '642-523-3353')
;

INSERT INTO tbl_Library_Branch
	(Branch_ID, BranchName, [Address])
	VALUES
	(1, 'Sharpstown', '123 Center Cir'),
	(2, 'Central', '956 Broadway'),
	(3, 'Northcoast', '112 2nd Street'),
	(4, 'Redwood Readers', '874 Water Street'),
	(5, 'Library', '1313 25th Street')
;

INSERT INTO tbl_Book_Loans
	(book_ID, Branch_ID, CardNO, DateOut, DueDate)
	VALUES
	(1, 1, '000-000-001', '1-1-2017', '1-15-2017'),
	(2, 2, '000-000-002', '2-2-2017', '2-16-2017'),
	(3, 3, '000-000-003', '3-3-2017', '3-17-2017'),
	(4, 4, '000-000-004', '4-4-2017', '4-18-2017'),
	(5, 5, '000-000-005', '5-5-2017', '5-19-2017'),
	(6, 1, '000-000-006', '6-6-2017', '6-20-2017'),
	(7, 2, '000-000-007', '7-7-2017', '7-21-2017'),
	(8, 3, '000-000-008', '8-8-2017', '8-22-2017'),
	(9, 4, '000-000-009', '9-9-2017', '9-23-2017'),
	(10, 5, '000-000-010', '10-10-2017', '10-24-2017'),
	(11, 1, '000-000-010', '1-1-2017', '1-15-2017'),
	(12, 2, '000-000-002', '2-2-2017', '2-16-2017'),
	(13, 3, '000-000-003', '3-3-2017', '3-17-2017'),
	(14, 4, '000-000-004', '4-4-2017', '4-18-2017'),
	(15, 5, '000-000-005', '5-5-2017', '5-19-2017'),
	(16, 1, '000-000-006', '6-6-2017', '6-20-2017'),
	(17, 2, '000-000-010', '7-7-2017', '7-21-2017'),
	(18, 3, '000-000-001', '8-8-2017', '8-22-2017'),
	(19, 4, '000-000-009', '9-9-2017', '9-23-2017'),
	(20, 5, '000-000-008', '10-10-2017', '10-24-2017'),
	(1, 1, '000-000-010', '1-1-2017', '1-15-2017'),
	(1, 2, '000-000-001', '2-2-2017', '2-16-2017'),
	(2, 3, '000-000-010', '3-3-2017', '3-17-2017'),
	(3, 5, '000-000-010', '4-4-2017', '4-18-2017'),
	(4, 5, '000-000-001', '5-5-2017', '5-19-2017'),
	(5, 1, '000-000-001', '6-6-2017', '6-20-2017'),
	(9, 2, '000-000-001', '7-7-2017', '7-21-2017'),
	(2, 3, '000-000-001', '8-8-2017', '8-22-2017'),
	(7, 4, '000-000-009', '9-9-2017', '9-23-2017'),
	(20, 5, '000-000-003', '10-10-2017', '10-24-2017'),
	(18, 1, '000-000-004', '1-1-2017', '1-15-2017'),
	(2, 2, '000-000-008', '2-2-2017', '2-16-2017'),
	(4, 3, '000-000-001', '3-3-2017', '3-17-2017'),
	(6, 4, '000-000-010', '4-4-2017', '4-18-2017'),
	(1, 5, '000-000-003', '5-5-2017', '5-19-2017'),
	(11, 1, '000-000-006', '6-6-2017', '6-20-2017'),
	(14, 2, '000-000-007', '7-7-2017', '7-21-2017'),
	(13, 3, '000-000-008', '8-8-2017', '8-22-2017'),
	(19, 4, '000-000-009', '9-9-2017', '9-23-2017'),
	(1, 5, '000-000-004', '10-10-2017', '10-24-2017'),
	(2, 1, '000-000-001', '1-1-2017', '1-15-2017'),
	(15, 2, '000-000-002', '2-2-2017', '2-16-2017'),
	(17, 3, '000-000-003', '3-3-2017', '3-17-2017'),
	(13, 4, '000-000-004', '4-4-2017', '4-18-2017'),
	(6, 5, '000-000-005', '5-5-2017', '5-19-2017'),
	(2, 1, '000-000-005', '6-6-2017', '6-20-2017'),
	(5, 2, '000-000-010', '7-7-2017', '7-21-2017'),
	(6, 3, '000-000-006', '8-8-2017', '8-22-2017'),
	(9, 4, '000-000-007', '9-9-2017', '9-23-2017'),
	(2, 5, '000-000-005', '10-10-2017', '10-24-2017')
;

INSERT INTO tbl_Book_Copies
	(BookID, BranchID, NO_OF_COPIES)
	VALUES
	(1, 1, 4),
	(2, 3, 3),
	(3, 2, 5),
	(4, 3, 2),
	(5, 4, 8),
	(6, 5, 6), 
	(7, 5, 3), 
	(8, 4, 3), 
	(9, 3, 9), 
	(10, 2, 8), 
	(11, 5, 4), 
	(12, 1, 6),
	(13, 1, 3),
	(14, 3, 5), 
	(15, 2, 8), 
	(16, 4, 8), 
	(17, 1, 7), 
	(18, 2, 6),
	(19, 3, 8), 
	(20, 5, 11)
;

INSERT INTO tbl_Book_Copies
	(BookID, BranchID, NO_OF_COPIES)
	VALUES
	(1, 2, 4),
	(2, 3, 3),
	(3, 2, 5),
	(4, 2, 2),
	(5, 2, 8),
	(6, 3, 6), 
	(7, 3, 3), 
	(8, 3, 3), 
	(9, 4, 9), 
	(10, 4, 8), 
	(11, 4, 4), 
	(12, 4, 6),
	(13, 5, 3),
	(14, 5, 5), 
	(15, 5, 8), 
	(16, 5, 8), 
	(17, 1, 7), 
	(18, 3, 6),
	(19, 4, 8), 
	(20, 1, 11)
;


INSERT INTO tbl_Book_Copies
	(BookID, BranchID, NO_OF_COPIES)
	VALUES
	(1, 5, 4),
	(2, 5, 3),
	(3, 5, 5),
	(4, 5, 2),
	(5, 1, 8),
	(6, 1, 6), 
	(7, 1, 3), 
	(8, 1, 3), 
	(9, 2, 9), 
	(10, 3, 8), 
	(11, 2, 4), 
	(12, 2, 6),
	(13, 2, 3),
	(14, 3, 5), 
	(15, 3, 8), 
	(16, 3, 8), 
	(17, 3, 7), 
	(18, 4, 6),
	(19, 4, 8), 
	(20, 4, 11)
;