SELECT order_total, CEIL(order_total)
  FROM orders
  WHERE order_id = 1234;

ORDER_TOTAL CEIL(ORDER_TOTAL)
----------- -----------------
   35444.9        35555      

SELECT total_weight, CEIL(total_weight) AS billable_weight
  FROM shipments
  WHERE shipment_id = 9051;

TOTAL_WEIGHT BILLABLE_WEIGHT
------------ ---------------
    35.28           36

SELECT hours_worked, CEIL(hours_worked) AS billable_hours
  FROM consultant_timesheets
  WHERE ticket_id = 4321;

HOURS_WORKED BILLABLE_HOURS
------------ --------------
    2.1              3
