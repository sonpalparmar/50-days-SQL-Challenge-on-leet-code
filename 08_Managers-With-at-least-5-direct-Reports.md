### Managers-With-at-least-5-direct-Reports

**Problem Statement:**

You are given a table named `Employee` with the following structure:

**Table: Employee**

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |

`id` is the primary key (column with unique values) for this table. Each row of this table indicates the name of an employee, their department, and the ID of their manager. If `managerId` is null, then the employee does not have a manager. No employee will be the manager of themself.

Write a solution to find managers with at least five direct reports. Return the result table in any order.

**Example 1:**

**Input:**

*Employee table:*

| id  | name  | department | managerId |
|-----|-------|------------|-----------|
| 101 | John  | A          | None      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |

**Output:**

| name |
|------|
| John |


### Solution

```sql

SELECT e1.name
FROM employee AS e1
LEFT JOIN employee AS e2 ON e1.id = e2.managerId
GROUP BY e1.name,e1.id
HAVING COUNT(e2.managerId) >= 5;
