select 
product_id,
sum(quantity) as quantity,
sum(stock) as total_stock,
avg(price) as avg_price
from
{{ref('int_sales_stock')}}
group by
product_id
