-- Table: Products

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_id  | int     |
-- | low_fats    | enum    |
-- | recyclable  | enum    |
-- +-------------+---------+

SELECT product_id
FROM Products AS p
WHERE p.low_fats = 'Y' AND recyclable = 'Y';
