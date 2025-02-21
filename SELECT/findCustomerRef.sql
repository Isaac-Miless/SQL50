-- Table: Customer

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | referee_id  | int     |
-- +-------------+---------+

SELECT name
FROM Customer AS c
WHERE c.referee_id != 2 OR c.referee_id IS null;
