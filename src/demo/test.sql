SELECT
    c AS bar,
    a + b AS foo
FROM my_table INNER JOIN my_other_table ON my_table.c = my_other_table.id
WHERE a > b
