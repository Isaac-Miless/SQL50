-- Table: Visits

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | visit_id    | int     |
-- | customer_id | int     |
-- +-------------+---------+

-- Table: Transactions

-- +----------------+---------+
-- | Column Name    | Type    |
-- +----------------+---------+
-- | transaction_id | int     |
-- | visit_id       | int     |
-- | amount         | int     |
-- +----------------+---------+

SELECT customer_id, COUNT(v.visit_id) as count_no_trans
FROM Visits v
    LEFT JOIN Transactions t
    ON v.visit_id = t.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id;
