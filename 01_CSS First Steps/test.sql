-- ---------------  COUNT ---------------------------


-- counts the number of books from the table i.e counts every individual row of the table
SELECT COUNT(*) FROM books;

-- count the number of unique author first names
SELECT COUNT(DISTINCT author_fname) FROM books;

SELECT COUNT(author_fname) FROM books;  -- This will count all the total fnames including repeated, but if we put DISTINCT like in above statement then it count only the unique values

-- count how many unique authors are there in the database
SELECT COUNT(author_lname) from books;  -- this will return the number of unique last fnames

-- but there are 2 authors with the same last name in the datbase. Hence we can do the following

SELECT COUNT(DISTINCT author_lname, author_fname) AS names FROM books;

-- Count the number of titles which have the word 'the' in them
SELECT title FROM books WHERE title LIKE '%the%'; -- This lists the book titles which have the word 'the' in them

SELECT COUNT(*) FROM books WHERE title LIKE '%the%'; -- This counts the book titles which have the word 'the' in them (returns a number)

SELECT title from books where title like '%\%%';  -- Here we use esacpe sequence \
SELECT title from books where title like '%\_%';