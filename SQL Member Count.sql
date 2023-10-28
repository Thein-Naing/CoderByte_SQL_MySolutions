/* SQL Member Count
Your table: maintable_LP3O5
MySQL version: 8.0.23 */

In this MySQL challenge, your query should return the names of the people who are reported to (excluding null values), the number of members that report to them, and the average age of those members as an integer.
The rows should be ordered by the names in alphabetical order. Your output should look like the following table.

Tags
SQL database MySQL */

/* write your SQL query below */

SELECT ReportsTo, count(ReportsTo) as 'Members', round(avg(age))  as "Average Age"
FROM maintable_LP3O5
WHERE  ReportsTo != "null"
GROUP BY ReportsTo
ORDER BY ReportsTo ASC;
