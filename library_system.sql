CREATE DATABASE Library;
Use Library;

CREATE TABLE Author(
id INT AUTO_INCREMENT PRIMARY KEY,
author_name varchar(50) NOT Null,
email varchar(50) NOT  NULL
);

CREATE TABLE Books(
id INT AUTO_INCREMENT PRIMARY KEY,
book_title varchar(50) NOT NULL,
author_id INT NOT NULL,
book_genre varchar(50),
year_of_publication varchar(50),
no_of_available_copies INT,
FOREIGN KEY (author_id) references Author(id)
);

CREATE TABLE Members(
id INT PRIMARY KEY,
member_name varchar(50),
contact_address varchar(50)
);

CREATE TABLE Borrowed_books(
event_id INT PRIMARY KEY,
borrowed_book_id INT NOT NULL,
member_id INT NOT NULL,
date_borrowed date,
expected_return_date date,
foreign key(borrowed_book_id) references Books(id),
foreign key(member_id) references Members(id)
);

INSERT INTO Author (author_name, email) VALUES
("john", "joh@gmail.com"),
("jane", "janegmail.com"),
("judy", "judygmail.com");



SELECT * FROM Author;

SHOW TABLES;