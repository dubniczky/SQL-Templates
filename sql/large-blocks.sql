-- How many blocks does the index segment with the largest size consists of

SELECT owner, segment_name, blocks
FROM (
    SELECT owner, segment_name, blocks, bytes
    FROM dba_segments
    WHERE segment_type = 'INDEX'
) 
WHERE bytes=(
    SELECT max(bytes)
    FROM dba_segments
    WHERE segment_type = 'INDEX'
)
