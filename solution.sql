SELECT book.name
FROM book
JOIN author ON book.author_id = author.id
WHERE author.name = 'Имя автора';
