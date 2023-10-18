### Exchange-seats
**Table: Seat**

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| student     | varchar |

**id** is the primary key (unique value) column for this table. Each row of this table indicates the name and the ID of a student. **id** is a continuous increment.

 **Problem Statement**

Write a solution to swap the seat ID of every two consecutive students. If the number of students is odd, the ID of the last student is not swapped. Return the result table ordered by **id** in ascending order.

**Example**

**Input:**

Seat table:

| id | student |
|----|---------|
| 1  | Abbot   |
| 2  | Doris   |
| 3  | Emerson |
| 4  | Green   |
| 5  | Jeames  |

**Output:**

| id | student |
|----|---------|
| 1  | Doris   |
| 2  | Abbot   |
| 3  | Green   |
| 4  | Emerson |
| 5  | Jeames  |

**Explanation:** Note that if the number of students is odd, there is no need to change the last one's seat.

### Solution

``` sql

SELECT 
s1.id AS id,
CASE 
WHEN s1.id % 2 = 1 AND s1.id = (SELECT MAX(id) FROM Seat) THEN s1.student
WHEN s1.id % 2 = 1 THEN s2.student
ELSE s3.student
END AS student
FROM Seat s1
LEFT JOIN Seat s2 ON s1.id + 1 = s2.id
LEFT JOIN Seat s3 ON s1.id - 1 = s3.id
ORDER BY id;
