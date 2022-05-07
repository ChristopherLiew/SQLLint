SELECT
    c AS bar,
    a + b AS foo
FROM my_table
WHERE a > b
ORDER BY
    a ASC, -- Before: a => After: a ASC
    b ASC, -- Before: b => After: b ASC
    c DESC
