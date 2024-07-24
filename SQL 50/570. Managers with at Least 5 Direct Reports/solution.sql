SELECT name 
FROM Employee
WHERE id IN
(SELECT managerId as id
FROM Employee
GROUP BY managerId
HAVING COUNT(*) >= 5)