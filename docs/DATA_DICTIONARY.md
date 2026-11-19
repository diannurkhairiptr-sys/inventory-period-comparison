# Data dictionary

| Table | Column | Description |
|---|---|---|
| MPP_DETAIL_SOH | TRAN_DATE | Inventory snapshot date |
| MPP_DETAIL_SOH | STORE | Store identifier |
| MPP_DETAIL_SOH | ITEM | Item identifier |
| MPP_DETAIL_SOH | STOCK_ON_HAND | Physical stock on hand |
| MPP_DETAIL_SOH | IN_TRANSIT_QTY | Quantity currently in transit |
| ITEM_MASTER | ITEM | Item identifier |
| ITEM_MASTER | DEPT | Department assigned to the item |
| DEPS | DEPT | Department identifier |
| DEPS | PURCHASE_TYPE | Purchase type used as a filter |

## Important notes
- The sample query uses `DATE` literals and half-open date ranges to avoid implicit string-to-date conversion.
- `EXISTS` checks whether the item belongs to a department with `PURCHASE_TYPE = 0`.
- `LEFT JOIN` preserves rows from the September dataset.
- In the sample, Store 103 has no October row. The query displays October quantity as zero and labels it `NO OCTOBER DATA`.
- Because the query starts from September (A), an item/store combination found only in October will not appear. A `FULL OUTER JOIN` would be needed if both September-only and October-only combinations must be reported.
