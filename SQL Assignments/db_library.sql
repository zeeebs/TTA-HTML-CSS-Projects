CREATE DATABASE db_library;
USE db_library;

--CREATING TABLES
CREATE TABLE library_branch (
	branch_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	branch_name VARCHAR(50) NOT NULL,
	branch_address VARCHAR(50) NOT NULL
	);

CREATE TABLE borrower (
	card_no INT NOT NULL PRIMARY KEY,
	borrower_name VARCHAR(50) NOT NULL,
	branch_address VARCHAR(50) NOT NULL,
	phone_number VARCHAR(50) NOT NULL
	);

CREATE TABLE book_copies (
	book_id INT NOT NULL,
	branch_id INT NOT NULL,
	number_of_copies INT NOT NULL,
	);

CREATE TABLE book_loans (
	book_id INT NOT NULL,
	branch_id INT NOT NULL,
	card_no INT NOT NULL,
	date_out DATE NOT NULL,
	date_due DATE NOT NULL
	);

CREATE TABLE books (
	book_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	title VARCHAR(50) NOT NULL,
	publisher VARCHAR(50) NOT NULL,
	);

CREATE TABLE publisher (
	publisher VARCHAR(50) NOT NULL PRIMARY KEY,
	publisher_address VARCHAR(50) NOT NULL,
	phone_number VARCHAR(50) NOT NULL
	);

CREATE TABLE book_authors (
	book_id INT NOT NULL,
	author_name VARCHAR(50) NOT NULL,
	);

--ADDING FKs
ALTER TABLE book_copies
ADD FOREIGN KEY (branch_id) REFERENCES library_branch(branch_id);

ALTER TABLE book_copies
ADD FOREIGN KEY (book_id) REFERENCES books(book_id);

ALTER TABLE book_loans
ADD FOREIGN KEY (branch_id) REFERENCES library_branch(branch_id);

ALTER TABLE book_loans
ADD FOREIGN KEY (card_no) REFERENCES borrower(card_no);

ALTER TABLE book_loans
ADD FOREIGN KEY (book_id) REFERENCES books(book_id);

ALTER TABLE books
ADD FOREIGN KEY (publisher) REFERENCES publisher(publisher);

ALTER TABLE book_authors
ADD FOREIGN KEY (book_id) REFERENCES books(book_id);

--INSERTING DATA
INSERT INTO library_branch VALUES
	('Oak Library', '123 Oak Lane'),
	('Elm Library', '456 Elm Ave'),
	('Maple Library', '789 Maple St'),
	('Ceder Library', '111 Ceder Blvd'),
	('Fir Library', '999 Fir Place'),
	('Aspen Library', '202 Aspen Way')
	;
SELECT*FROM library_branch

INSERT INTO borrower VALUES
	('8030', 'Naruto Uzumaki', '9 Hidden Leaf Village', '8408113631'),
	('4048', 'Light Yagami', '111 Tokyo Dr', '1450823957'),
	('3881', 'Levi Ackerman', '123 Paradise Island', '3289197155'),
	('7911', 'Edward Elric', '777 Resembool Ave', '4338360382'),
	('7097', 'Kakashi Hatake', '915 Hidden Leaf Village', '6314672988'),
	('7066', 'Itachi Uchiha', '069 Hidden Leaf Village', '6450287711'),
	('7989', 'Izuku Midoriya', '715 UA High', '1912916425'),
	('3873', 'Tanjiro Kamado', '714 Mt. Kumotori', '1934351788')
	;
SELECT*FROM borrower

INSERT INTO publisher VALUES
	('Jaclyn Chamberlain', '212 Sherman St.', '4768376310'),
	('Brendon Mark', '17 Lake St.', '3987599445'),
	('Elma Watts', '256 Helen St.', '3768528940'),
	('Jenn Simons', '50 Galvin Dr.', '9854969604'),
	('Tamsyn Cook', '926 North Road', '3886596398'),
	('Jo Benjaminson', '902 Berkshire Ave.', '2272839375'),
	('Madge Spears', '9313 Ocean Dr.', '6471769603'),
	('Jez Verity', '7559 Golf St.', '9831845234'),
	('Lindsay Thwaite', '72 Maple Dr.', '8109930336'),
	('Christina Frye', '557 Maple Drive', '9357174117')
	;
SELECT*FROM publisher

INSERT INTO books VALUES
	('The Bear and The Nightingale', 'Brendon Mark'),
	('Crooked Kingdom', 'Jaclyn Chamberlain'),
	('The Short Drop', 'Jo Benjaminson'),
	('The Raven Tower', 'Jaclyn Chamberlain'),
	('The Rest of the Story', 'Madge Spears'),
	('The Naked and the Dead', 'Jez Verity'),
	('The Rosie Result', 'Elma Watts'),
	('The Moviegoer', 'Brendon Mark'),
	('As I Lay Dying', 'Christina Frye'),
	('Tobacco Road', 'Brendon Mark'),
	('A Study in Charlotte', 'Brendon Mark'),
	('The Chalk Man', 'Madge Spears'),
	('Five Feet Apart', 'Tamsyn Cook'),
	('Children of Time', 'Christina Frye'),
	('Slade House', 'Jez Verity'),
	('The Trial', 'Jenn Simons'),
	('Romanov', 'Lindsay Thwaite'),
	('The Lost Tribe', 'Jaclyn Chamberlain'),
	('A Curve in the Road', 'Tamsyn Cook'),
	('Everything, Everything', 'Jaclyn Chamberlain')
	;
SELECT*FROM books;

INSERT INTO book_authors VALUES
	(7, 'Alton Dickinson'),
	(8, 'Adele Plaskett'),
	(13, 'Bonnie Peacock'),
	(14, 'Malcom Ruskin'),
	(17, 'Bonnie Peacock'),
	(18, 'Jenn Hobson'),
	(21, 'Seth Hilton'),
	(22, 'Adele Plaskett'),
	(23, 'Buck Garnett'),
	(25, 'Bonnie Peacock')
	;
SELECT*FROM book_authors;

INSERT INTO book_copies VALUES
	(7, 1, 2),
	(8, 5, 5),
	(9, 3, 3),
	(10, 6, 8),
	(11, 2, 5),
	(12, 6, 6),
	(13, 4, 8),
	(14, 1, 8),
	(15, 2, 9),
	(16, 3, 11),
	(17, 5, 4),
	(18, 2, 5),
	(19, 4, 3),
	(20, 4, 2),
	(21, 1, 2),
	(22, 3, 5),
	(23, 5, 6),
	(24, 6, 7),
	(25, 3, 7),
	(26, 1, 4)
	;
SELECT*FROM book_copies;


INSERT INTO book_loans VALUES
	(26, 4, '8030', '2023-03-01', '2023-05-01'),
	(17, 1, '7911', '2023-03-06', '2023-05-06'),
	(10, 6, '7097', '2023-03-10', '2023-05-10'),
	(11, 2, '7989', '2023-03-24', '2023-05-24'),
	(8, 5, '4048', '2023-03-29', '2023-05-29'),
	(13, 4, '3881', '2023-04-01', '2023-06-01'),
	(21, 6, '7066', '2023-03-06', '2023-05-06'),
	(9, 3, '3873', '2023-04-01', '2023-06-01'),
	(17, 1, '3873', '2023-04-01', '2023-06-01'),
	(20, 2, '7911', '2023-03-06', '2023-05-06')
	;
SELECT*FROM book_loans;

SELECT*FROM ((book_loans FULL OUTER JOIN borrower ON book_loans.card_no = 
borrower.card_no) FULL OUTER JOIN books ON book_loans.book_id =  books.book_id);

--create a query that returns all book titles and the authors name
SELECT*FROM books;
SELECT*FROM book_authors;

SELECT * FROM books INNER JOIN book_authors ON book_authors.book_id = book_authors.book_id;

--UPDATING DB SO THAT I CAN DO THE ASSIGNMENTS
UPDATE library_branch
SET branch_name = 'Sharpstown'
WHERE branch_name = 'Fir Library';
SELECT*FROM library_branch;
DELETE FROM library_branch WHERE branch_id BETWEEN 7 AND 18;
UPDATE book_loans
SET card_no = '7911'
WHERE card_no = '7097';

--PROC for: How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?
SELECT*FROM books;
SELECT*FROM library_branch;
SELECT*FROM book_copies;
SELECT*FROM borrower;
SELECT*FROM book_loans;

CREATE PROCEDURE LostTribeCopies
AS
SELECT number_of_copies FROM books
	INNER JOIN book_copies ON books.book_id = book_copies.book_id
	INNER JOIN library_branch ON library_branch.branch_id = book_copies.branch_id
	WHERE title = 'The Lost Tribe'
GO
--How many copies of the book titled "The Lost Tribe" are owned by each library branch?
CREATE PROCEDURE LostTribeCopiesPerBranch1
AS
SELECT borrower_name FROM borrower	LEFT JOIN book_loans ON borrower.card_no = book_loans.card_no	WHERE book_id is null;
SELECT library_branch.branch_id, number_of_copies FROM books
	INNER JOIN book_copies ON books.book_id = book_copies.book_id
	INNER JOIN library_branch ON library_branch.branch_id = book_copies.branch_id
	WHERE title = 'The Lost Tribe'
GO
--Retrieve the names of all borrowers who do not have any books checked out.
CREATE PROCEDURE NoBooksCheckedOut
AS
SELECT borrower_name FROM borrower	LEFT JOIN book_loans ON borrower.card_no = book_loans.card_no	WHERE book_id is nullGO