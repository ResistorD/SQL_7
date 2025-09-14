# Ticket #7 SQL solution
# SQL-задача: Книги определённого автора

## Условие

Есть две таблицы:

- `book(name, author_id)` — книги с указанием ID автора  
- `author(id, name)` — таблица авторов

Нужно вывести **все книги определённого автора** по его имени (`author.name`).

---

## Ход мысли

1. Объединяем таблицы через `JOIN` по полю `author_id = id`.
2. Фильтруем по `author.name` с помощью `WHERE`.
3. Выводим названия книг, соответствующих автору.

---

## SQL-запрос

```sql
SELECT book.name
FROM book
JOIN author ON book.author_id = author.id
WHERE author.name = 'Имя автора';

Пример

Таблица author:

id	name
1	Пушкин
2	Толстой

Таблица book:

name	           author_id
Война и мир	      2
Анна Каренина	      2
Капитанская дочка     1

Результат при author.name = 'Толстой':

name
Война и мир
Анна Каренина