-- 04_validation_queries.sql

-- Check source inventory rows for the two reporting dates.
SELECT
    TRAN_DATE,
    STORE,
    ITEM,
    STOCK_ON_HAND,
    IN_TRANSIT_QTY,
    STOCK_ON_HAND + IN_TRANSIT_QTY AS TOTAL_EOH_QTY
FROM MPP_DETAIL_SOH
WHERE ITEM = 900001
  AND TRAN_DATE IN (DATE '2026-09-30', DATE '2026-10-31')
ORDER BY STORE, TRAN_DATE;

-- Check which items pass the purchase type filter.
SELECT
    IM.ITEM,
    IM.DEPT,
    D.PURCHASE_TYPE
FROM ITEM_MASTER IM
JOIN DEPS D
    ON D.DEPT = IM.DEPT
WHERE D.PURCHASE_TYPE = 0
ORDER BY IM.ITEM;
