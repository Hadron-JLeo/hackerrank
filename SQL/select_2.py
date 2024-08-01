# Write your MySQL query statement below

#Find the names of the customer that are not referred by the customer with id = 2.
""" +-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+
In SQL, id is the primary key column for this table.
Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
"""

SELECT name
FROM Customer
WHERE (referee_id <> 2) or referee_id is NULL


# This solution I came up with beats 70% of submits
SELECT name FROM Customer
WHERE referee_id is NULL
UNION ALL
SELECT name FROM Customer
WHERE referee_id <> 2;
