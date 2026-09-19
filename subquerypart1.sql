use data_analytics;
CREATE TABLE election_records (
    party_id INT NOT NULL,
    party_name VARCHAR(255) NOT NULL,
    vote INT NOT NULL,
    vote_percentage FLOAT NOT NULL,
    PRIMARY KEY (party_id)
);

select * from election_records;

INSERT INTO election_records (party_id, party_name, vote, vote_percentage) VALUES (1, 'Party A', 5000, 35.5);
INSERT INTO election_records (party_id, party_name, vote, vote_percentage) VALUES (2, 'Party B', 4800, 34.0);
INSERT INTO election_records (party_id, party_name, vote, vote_percentage) VALUES (3, 'Party C', 3200, 22.7);
INSERT INTO election_records (party_id, party_name, vote, vote_percentage) VALUES (4, 'Party D', 1000, 7.1);
INSERT INTO election_records (party_id, party_name, vote, vote_percentage) VALUES (5, 'Party E', 200, 1.4);
INSERT INTO election_records (party_id, party_name, vote, vote_percentage) VALUES (6, 'Party F', 150, 1.1);
INSERT INTO election_records (party_id, party_name, vote, vote_percentage) VALUES (7, 'Party G', 80, 0.6);
INSERT INTO election_records (party_id, party_name, vote, vote_percentage) VALUES (8, 'Party H', 50, 0.4);
INSERT INTO election_records (party_id, party_name, vote, vote_percentage) VALUES (9, 'Party I', 30, 0.2);
INSERT INTO election_records (party_id, party_name, vote, vote_percentage) VALUES (10, 'Party J', 20, 0.1);
INSERT INTO election_records (party_id, party_name, vote, vote_percentage) VALUES (11, 'Party k', 7890, 45.5);

select party_name from election_records
where vote =5000;
select * from  election_records;

select * from election_records order by vote desc;


select * from  election_records
where vote =(select max(vote) from election_records);
--second heighst
select * from election_records
where vote=(select max(vote) from election_records
 where vote<(select max(vote) from election_records ));
 
 --3rd heighst
 select * from election_records
 where vote=
 (select max(vote) from election_records
 where vote< (select max(vote) from election_records
 where vote<(select max(vote)from election_records)));

CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(50),
    birth_year INT
);

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100),
    author_id INT,
    publication_year INT
);

select * from books;
INSERT INTO authors (author_id, author_name, birth_year) VALUES
(1, 'Rabindranath Tagore', 1861),
(2, 'Bankim Chandra Chattopadhyay', 1838),
(3, 'Sarat Chandra Chattopadhyay', 1876),
(4, 'Bibhutibhushan Bandyopadhyay', 1894),
(5, 'Sukumar Ray', 1887),
(6, 'Michael Madhusudan Dutt', 1824),
(7, 'Kazi Nazrul Islam', 1899),
(8, 'Jibanananda Das', 1899),
(9, 'Manik Bandyopadhyay', 1908),
(10, 'Ashapurna Devi', 1909),
(11, 'Tarashankar Bandyopadhyay', 1898),
(12, 'Sharadindu Bandyopadhyay', 1899),
(13, 'Buddhadeb Bose', 1908),
(14, 'Sanjib Chandra Chattopadhyay', 1834),
(15, 'Swarnakumari Devi', 1855),
(16, 'Dinesh Chandra Sen', 1866),
(17, 'Dwijendralal Ray', 1863),
(18, 'Pramatha Chowdhury', 1868),
(19, 'Upendrakishore Ray Chowdhury', 1863),
(20, 'Bibhutibhushan Mukhopadhyay', 1894);

select * from books;
select * from authors;

 insert into books(book_id,book_title,author_id,publication_year)values
 ( 101,'Gitanjali',(select author_id from authors
 where author_name='Rabindranath Tagore'),1910);
 
  insert into books(book_id,book_title,author_id,publication_year)values
 (102,'Devdas',(select author_id from authors 
 where author_name='Sarat Chandra Chattopadhyay'),1917);
 
INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(103, 'Gora', (SELECT author_id FROM authors
WHERE author_name = 'Rabindranath Tagore'), 1910);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(104, 'Ghare Baire', (SELECT author_id FROM authors
WHERE author_name = 'Rabindranath Tagore'), 1916);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(105, 'Chokher Bali', (SELECT author_id FROM authors
WHERE author_name = 'Rabindranath Tagore'), 1903);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(106, 'Parineeta', (SELECT author_id FROM authors
WHERE author_name = 'Sarat Chandra Chattopadhyay'), 1916);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(107, 'Srikanta', (SELECT author_id FROM authors
WHERE author_name = 'Sarat Chandra Chattopadhyay'), 1917);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(108, 'Grihadaha', (SELECT author_id FROM authors
WHERE author_name = 'Sarat Chandra Chattopadhyay'), 1920);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(109, 'Pather Dabi', (SELECT author_id FROM authors
WHERE author_name = 'Sarat Chandra Chattopadhyay'), 1926);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(110, 'Palli Samaj', (SELECT author_id FROM authors
WHERE author_name = 'Sarat Chandra Chattopadhyay'), 1916);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(111, 'Anandamath', (SELECT author_id FROM authors
WHERE author_name = 'Bankim Chandra Chattopadhyay'), 1882);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(112, 'Durgeshnandini', (SELECT author_id FROM authors
WHERE author_name = 'Bankim Chandra Chattopadhyay'), 1865);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(113, 'Aranyak', (SELECT author_id FROM authors
WHERE author_name = 'Bibhutibhushan Bandyopadhyay'), 1939);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(114, 'Pather Panchali', (SELECT author_id FROM authors
WHERE author_name = 'Bibhutibhushan Bandyopadhyay'), 1929);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(115, 'Abol Tabol', (SELECT author_id FROM authors
WHERE author_name = 'Sukumar Ray'), 1923);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(116, 'Pagla Dashu', (SELECT author_id FROM authors
WHERE author_name = 'Sukumar Ray'), 1940);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(117, 'Meghnad Badh Kavya', (SELECT author_id FROM authors
WHERE author_name = 'Michael Madhusudan Dutt'), 1861);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(118, 'Banalata Sen', (SELECT author_id FROM authors
WHERE author_name = 'Jibanananda Das'), 1942);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(119, 'Padma Nadir Majhi', (SELECT author_id FROM authors
WHERE author_name = 'Manik Bandyopadhyay'), 1936);

INSERT INTO books(book_id, book_title, author_id, publication_year)
VALUES
(120, 'Pratham Pratishruti', (SELECT author_id FROM authors
WHERE author_name = 'Ashapurna Devi'), 1964);

select * from books;
select * from authors;


select * from books
inner join authors
on authors.author_id=books.author_id;

select * from books
right join authors
on authors.author_id=books.author_id;

select * from books;
select * from authors;

select author_name,
( select count(author_id) from books b
where a.author_id=b.author_id
) as total_book_published from authors a;


select author_name,
( select count(author_id) from books b
where a.author_id=b.author_id
) as total_book_published from authors a where author_name ='Rabindranath Tagore';

select * from authors 
where author_id in(1,5,8);




