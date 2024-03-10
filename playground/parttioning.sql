COPY (
    SELECT
        CAST(RANDOM() * 100 // 10 + 2000 AS INTEGER) AS year,
        CAST(random() * 100 // 12 + 1 AS INTEGER) AS month,
        CAST(random() * 100 // 1 AS INTEGER) As data
    FROM
        RANGE(1000000)
) 
TO
 'partitioned' (FORMAT PARQUET, PARTITION_BY (year, month))
;

SELECT
    COUNT(*)
FROM
    'partitioned/*/*/*.parquet'
WHERE
    year >= 2001
    AND month = 1
;

