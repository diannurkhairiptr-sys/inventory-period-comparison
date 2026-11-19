# Inventory Stock Comparison (Oracle SQL)

## Project overview
This project compares end-of-day inventory quantities for one item across multiple stores between two reporting dates: 30 September 2026 and 31 October 2026.

The query:
1. Aggregates `STOCK_ON_HAND + IN_TRANSIT_QTY` by item and store for each date.
2. Filters to items whose department has `PURCHASE_TYPE = 0`.
3. Joins the two periods to compare stock quantities.
4. Calculates the stock difference and labels the movement.

> **Data notice:** All table names and sample rows in this project are fictional. Store IDs, item IDs, and quantities are illustrative and are not copied from production data.

> **Execution notice:** The expected output is calculated from the fictional sample rows for documentation. It is not an Oracle execution screenshot.

## Files
- `sql/01_create_tables.sql` — creates the sample tables.
- `sql/02_insert_sample_data.sql` — inserts fictional rows.
- `sql/03_inventory_comparison.sql` — comparison query.
- `sql/04_validation_queries.sql` — supporting checks.
- `docs/expected_output.csv` — expected result.
- `docs/expected_output.png` — preview of the expected result.
- `docs/DATA_DICTIONARY.md` — table and column descriptions.

## How to run
1. Use an Oracle schema where you have permission to create tables.
2. Run `sql/01_create_tables.sql`.
3. Run `sql/02_insert_sample_data.sql`.
4. Run `sql/03_inventory_comparison.sql`.

## Comparison logic
- `EOH_QTY_30SEP2026`: total stock on hand plus in-transit quantity on 30 September 2026.
- `EOH_QTY_31OCT2026`: total stock on hand plus in-transit quantity on 31 October 2026.
- `STOCK_DIFFERENCE`: October quantity minus September quantity.
- `STATUS`: `INCREASE`, `DECREASE`, or `NO CHANGE`.

The main query starts from the September dataset and uses a `LEFT JOIN` to October. Therefore, stores present in September remain visible even if no matching October row exists. October-only combinations are not included by this join direction.

## Skills demonstrated
Oracle SQL, CTEs, aggregate functions, `EXISTS`, `LEFT JOIN`, `NVL`, `CASE`, date filtering, and period-over-period inventory analysis.
