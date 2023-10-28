/* SQL Basic Find

In this MySQL challenge, your query should return FirstName, LastName, and the Age from your table for all users who are above the age of 25 ordered by ID in ascending order. 
Your output should look like the following table. */

/* write your SQL query below */

SELECT FirstName, LastName, Age FROM maintable_71CUO
WHERE age > 25
ORDER BY ID ASC;
