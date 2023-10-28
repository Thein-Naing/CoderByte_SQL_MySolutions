/* In this MySQL challenge, your query should return the vendor information along with the values from the table cb_vendorinformation.
You should combine the values of the two tables based on the GroupID column.
The final query should only print out the GroupID, CompanyName, and final count of all rows that are grouped into each company name under a column titled Count. 
The output table should be then sorted by the Count column and then sorted by GroupID so that a higher number appears first.
Your output should look like the following table. */
/* write your SQL query below */

SELECT 
 maintable_42VYZ.GroupID,
cb_vendorinformation.CompanyName,
COUNT( maintable_42VYZ.GroupID) AS `COUNT`

FROM maintable_42VYZ
JOIN cb_vendorinformation 
  ON cb_vendorinformation.GroupID =  maintable_42VYZ.GroupID

GROUP BY 
 maintable_42VYZ.GroupID,
 cb_vendorinformation.CompanyName

ORDER BY 
    COUNT(maintable_42VYZ.GroupID),
    maintable_42VYZ.GroupID;
