
CREATE DATABASE db_tvShows; /*create db for tv shows*/

CREATE TABLE tbl_show (  /*create tables*/
	show_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	show_name VARCHAR(50) NOT NULL,
	actor_name VARCHAR(50) NOT NULL,
	genre_type VARCHAR(50) NOT NULL
	);

CREATE TABLE tbl_directors (
	directors_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	directors_name VARCHAR(50),
	show_id INT NOT NULL CONSTRAINT fk_show_id FOREIGN KEY REFERENCES tbl_show(show_id) ON UPDATE CASCADE ON DELETE CASCADE,
	age INT NOT NULL
	);

INSERT INTO tbl_show
	(show_name, actor_name, genre_type)
	VALUES
	('Game of Thrones', 'Pedro Pascal', 'Fantasy'),
	('Last of Us', 'Pedro Pascal', 'Apocalyptic'),
	('The Office', 'Steve Carell', 'Comedy'),
	('The Walking Dead', 'Lauren Cohan', 'Apocalyptic'),
	('Sherlock', 'Benedict Cumberbatch', 'Mystery')
	;
	SELECT *FROM tbl_show;

INSERT INTO tbl_directors
	(directors_name, show_id, age)
	VALUES
	('Alan Taylor', 1, 64),
	('Neil Druckmann', 2, 44),
	('Randall Einhorn', 3, 59),
	('Frank Darabont', 4, 64),
	('Euros Lyn', 5, 52)
	;
	SELECT *FROM tbl_directors;
