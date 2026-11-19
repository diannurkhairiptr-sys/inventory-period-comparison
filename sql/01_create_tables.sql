-- 01_create_tables.sql
-- Fictional sample schema for inventory comparison.

CREATE TABLE DEPS (
    DEPT          NUMBER,
    PURCHASE_TYPE NUMBER
);

CREATE TABLE ITEM_MASTER (
    ITEM NUMBER,
    DEPT NUMBER
);

CREATE TABLE MPP_DETAIL_SOH (
    TRAN_DATE       DATE,
    STORE           NUMBER,
    ITEM            NUMBER,
    STOCK_ON_HAND   NUMBER,
    IN_TRANSIT_QTY  NUMBER
);
