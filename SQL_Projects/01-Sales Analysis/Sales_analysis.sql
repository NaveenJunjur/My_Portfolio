use sampledb;
go

-- Inspecting data
select * from [dbo].[sales_data_sample];

-- Checking unique values
select distinct STATUS from [dbo].[sales_data_sample]  -- good one to plot
select distinct year_id from [dbo].[sales_data_sample]
select distinct PRODUCTLINE from [dbo].[sales_data_sample]  -- good one to plot
select distinct COUNTRY from [dbo].[sales_data_sample]  -- good one to plot
select distinct DEALSIZE from [dbo].[sales_data_sample]  -- good one to plot
select distinct TERRITORY from [dbo].[sales_data_sample]  -- good one to plot

select distinct MONTH_ID from [dbo].[sales_data_sample]
where YEAR_ID = 2005

-- Analysis
-- Grouping sales by product line
select productline, sum(sales) Revenue
from [dbo].[sales_data_sample]
group by Productline 
order by 2 desc

select YEAR_ID, sum(sales) Revenue
from [dbo].[sales_data_sample]
group by YEAR_ID 
order by 2 desc

select DEALSIZE, sum(sales) Revenue
from [dbo].[sales_data_sample]
group by DEALSIZE 
order by 2 desc

-- What was the best month for sales in a specific year? How mucj was earned that month?
select MONTH_ID, sum(sales) Revenue, count(ORDERNUMBER) Frequency
from [dbo].[sales_data_sample]
where YEAR_ID = 2004  --change year to see the rest
group by MONTH_ID 
order by 2 desc

-- November seems to be best month, what product do they sell in November, Classic i believe
select MONTH_ID, productline, sum(sales) Revenue, count(ORDERNUMBER) Frequency
from [dbo].[sales_data_sample]
where YEAR_ID = 2004 and MONTH_ID = 11 --change year to see the rest
group by MONTH_ID,PRODUCTLINE 
order by 3 desc

-- Who is our best customer (this could be answered with RFM --> Recency - Last order date, Frequency - count of total orders, Monetary - total spend)
select  customername, 
		sum(sales) MonetaryValue, 
		avg(sales) AvgMonetaryValue, 
		count(ordernumber) Frequency, 
		max(orderdate) last_order_date
	from [dbo].[sales_data_sample]
	group by CUSTOMERNAME

-- RFM Analysis
drop table if exists #rfm     --just created a temp table
;with rfm as        
(
	select  customername, 
			--Monetary Values
			sum(sales) MonetaryValue, 
			avg(sales) AvgMonetaryValue, 
			--Frequency
			count(ordernumber) Frequency, 
			--For calculation of Recency
			(select max(orderdate) from [dbo].[sales_data_sample]) max_order_date,
			--Recency
			datediff(DD, max(orderdate), (select max(orderdate) from [dbo].[sales_data_sample])) Recency
		from [dbo].[sales_data_sample]
		group by CUSTOMERNAME
),
rfm_calc as
(
	select r.*,    --r.* is used to select all the columns from the table 
		ntile(4) over (order by Recency) rfm_recency,      --higher the value the ntile assigns the value as 4 and so on
		ntile(4) over (order by Frequency) rfm_frequency,      --higher the value the ntile assigns the value as 4 and so on
		ntile(4) over (order by MonetaryValue) rfm_monetary      --higher the value the ntile assigns the value as 4 and so on
	from rfm r
)
select	c.*, 
		rfm_recency + rfm_frequency + rfm_monetary as rfm_cell,      --Addition
		(cast(rfm_recency as varchar) + cast(rfm_frequency as varchar) + cast(rfm_monetary as varchar)) as rfm_cell_string    --Concatenation
into #rfm
from rfm_calc c

select customername,  rfm_recency, rfm_frequency, rfm_monetary,
	case 
		when rfm_cell_string in (111, 112, 121, 122, 123, 132, 211, 212, 114, 141) then 'lost_customers'  --lost customers
		when rfm_cell_string in (133, 134, 143, 144, 244, 334, 343, 344) then 'Slipping away, cannot lose'
		when rfm_cell_string in (311, 411, 331) then 'new customers'
		when rfm_cell_string in (222, 223, 233, 322) then 'potential churners'
		when rfm_cell_string in (323, 333, 321, 422, 332, 432) then 'active'
		when rfm_cell_string in (433, 434, 443, 444) then 'loyal'
	end rfm_segment
from #rfm

-- What products are most often sold together?
-- select * from [dbo].[sales_data_sample] where ordernumber = 10411
select distinct ordernumber, stuff(
	(select ',' + productcode
	from [dbo].[sales_data_sample] p 
	where ordernumber in (
		select ordernumber 
		from (
			select ordernumber, count(*) rn
			from [dbo].[sales_data_sample]
			where status = 'Shipped'
			group by ordernumber
		) m
		where rn = 2       --number of products
	)
	and p.ordernumber = s.ordernumber
	for xml path (''))
	, 1, 1, '') productcodes      --stuff is used to remove the first string i.e ',' which is presented at starting point
from [dbo].[sales_data_sample] s 
order by 2 desc
