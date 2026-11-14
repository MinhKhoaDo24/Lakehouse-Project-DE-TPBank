CREATE SCHEMA IF NOT EXISTS iceberg.demo;

CREATE TABLE iceberg.demo.test_delete_manifest (
    id BIGINT,
    name VARCHAR
)
WITH (
    format = 'PARQUET'
);

INSERT INTO iceberg.demo.test_delete_manifest
SELECT
    id,
    'user_' || CAST(id AS VARCHAR)
FROM UNNEST(sequence(1, 1000)) AS t(id);

DELETE FROM iceberg.demo.test_delete_manifest
WHERE id BETWEEN 1 AND 500;

SELECT COUNT(*) 
FROM iceberg.demo.test_delete_manifest;

DROP TABLE iceberg.demo.test_delete_manifest;