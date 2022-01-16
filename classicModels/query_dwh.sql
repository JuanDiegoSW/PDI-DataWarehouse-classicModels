SELECT dd.sk,
  dd.year,
  dd.quarter,
  dd.month_name,
  dd.day,
  dp.product_code,
  dp.product_name,
  dp.product_line,
  de.sk,
  de.employee_number,
  de.employee_name,
  dc.sk,
  dc.customer_number,
  dc.customer_name,
  sum(fo.quantity_ordered) as jumlah,
  sum(fo.price_total) as Total
FROM classicmodels_dwh.dim_date dd
  LEFT JOIN classicmodels_dwh.fact_order fo ON dd.sk = fo.order_date_sk
  LEFT JOIN classicmodels_dwh.dim_product dp ON dp.sk = fo.product_sk
  LEFT join classicmodels_dwh.dim_employee de ON de.sk = fo.employee_sk
  LEFT JOIN classicmodels_dwh.dim_customer dc ON dc.sk = fo.customer_sk
GROUP by dd.sk,
  dp.sk,
  de.sk,
  dc.sk