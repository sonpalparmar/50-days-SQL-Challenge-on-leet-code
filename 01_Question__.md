# 50-days-SQL-Challenge-on-leet-code
**Find the names of the customer that are not referred by the customer with id = 2.**

**Return the result table in any order.**
Customer table:
**input** -
|----|------|------------|
| id | name | referee_id |
|----|------|------------|
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |
|----|------|------------|

**output** - 
| name |
|------|
| Will |
| Jane |
| Bill |
| Zack |


## solution
``` SELECT name FROM Customer WHERE referee_id IS NULL OR referee_id != 2; ```

