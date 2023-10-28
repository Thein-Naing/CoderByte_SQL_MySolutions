/* In this MySQL challenge, your query should return the vendor information along with the values from the table cb_vendorinformation.
You should combine the values of the two tables based on the GroupID column.
The final query should only print out the GroupID, CompanyName, and final count of all rows that are grouped into each company name under a column titled Count. 
The output table should be then sorted by the Count column and then sorted by GroupID so that a higher number appears first.
Your output should look like the following table. */

SELECT 
    maintable_UEX7Z.GroupID,
    cb_vendorinformation.CompanyName,
    COUNT(maintable_UEX7Z.GroupID) AS `Count`
FROM 
    maintable_UEX7Z
JOIN cb_vendorinformation ON cb_vendorinformation.GroupID = maintable_UEX7Z.GroupID
GROUP BY
    maintable_UEX7Z.GroupID,
    cb_vendorinformation.CompanyName
ORDER BY 
    COUNT(maintable_UEX7Z.GroupID),
    maintable_UEX7Z.GroupID
