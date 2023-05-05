/* 	Q1. Which product has maximum sales */
select product from products 
 join sales on sales.pid=products.pid
where sale=(select max(sale) from sales);

/* Q2. On which location has the most customer */
select location from  people 
join sales on sales.spid=people.spid
where customers =   (select max(customers) from sales
 join people on people.spid=sales.spid);

 /* Q3. find the total sales by region in descending order */
 select  region ,sum(sales.sale) as total_sales from  geo 
join sales on sales.geoid= geo.geoid
  group by sales.geoid order by total_sales desc;

/* Q4. How many chocolates boxes has been sold in the month of february */
   select sum(boxes)as total_boxes_in_feb from sales 
	where saledate between '2021-02-01' and '2021-02-28';
    
/* Q5. On which month has a highest sales */
with highest as
(select sum(sale) as total_sales , monthname(saledate) as month
 from sales  group by month)
 select * from highest where total_sales=(select max(total_sales) from highest );
 
 
 
 
 
