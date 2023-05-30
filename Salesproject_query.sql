SELECT count(*) FROM transactions where Market_code="mark001";

alter table customers rename column custmer_name to customer_name;

SELECT * FROM transactions where currency="USD";

SELECT * FROM transactions;

select sum(sales_amount) from transactions t inner join date d on d.date= t.order_date where year=2020;

select sum(sales_amount) from transactions t inner join date d on d.date= t.order_date where year=2020 and market_code="mark001";

select distinct product_code from transactions where market_code="mark001";

select count(distinct product_code) from transactions where market_code="mark001";

 select * from transactions t inner join date d on d.date= t.order_date
							  inner join customers c on c.customer_code= t.customer_code
							  inner join markets m on m.markets_code= t.market_code
                              inner join products p on p.product_code= t.product_code;
                             
select sum(sales_amount) from transactions where year= 2020;   

SELECT * FROM transactions where sales_amount<=0;

select distinct currency from transactions;

select count(*) currency from transactions where currency ='INR';

select count(*) currency from transactions where currency ='INR\r';     
 
select * from transactions where currency ='USD\r' or currency = 'USD' ; 
  
select * from customers;

select customer_type from customers where customer_name='surge stores';

select count(*) from customers where customer_name='surge stores';

select distinct customer_type from customers;

select count(distinct customer_type) from customers;

select distinct customer_name from customers;

select count(distinct customer_name) from customers;

select count(*) from customers;

select count(*) from customers where customer_type= 'e-commerce';

select * from date;

select count(*) from date;

select * from date where month_name='june';

select count(*) from date where month_name='june';

select count(*) from date where month_name='june' and year= 2018;

select count(*) from date where year> 2018;

select * from markets;

select count(*) from markets;

select count(*) from markets where zone = 'south';

select zone, markets_name from markets  where markets_name= 'chennai' group by zone;

select distinct zone from markets;

SELECT * FROM products;

SELECT count(*) FROM products;

SELECT distinct product_type FROM products;

SELECT * FROM transactions;

SELECT count(*) FROM transactions;

select sum(sales_amount) from transactions;

select sum(sales_qty) from transactions;

select distinct currency from transactions;

SELECT count(currency) FROM transactions where currency='INR';

SELECT count(currency) FROM transactions where currency='INR\r';

SELECT count(currency) FROM transactions where currency='USD';

SELECT count(currency) FROM transactions where currency='USD\r';

SELECT sum(sales_amount) FROM transactions where currency='INR\r';

SELECT count(sales_amount) FROM transactions where currency='INR\r';

SELECT sum(sales_qty) FROM transactions where currency='INR\r';

SELECT sum(sales_amount) FROM transactions where  year(order_date) = 2018;

select count(sales_qty) from transactions where market_code='mark003';

select sum(sales_qty) from transactions where market_code='mark003';

select avg(sales_amount) from transactions where market_code='mark001';

select avg(sales_amount) from transactions where market_code='mark001' and year(order_date) = 2018;

select count(*) from transactions where sales_amount<0;

select * from transactions t inner join customers c on c.customer_code = t.customer_code;

select sum(sales_amount) from transactions t inner join customers c on c.customer_code = t.customer_code where c.customer_code= 'cus001';

select sum(sales_amount) from transactions t inner join customers c on c.customer_code = t.customer_code where c.customer_code= 'cus001' and year(order_date)= 2018;

select count(distinct product_code) from transactions t inner join customers c on c.customer_code = t.customer_code where c.customer_code= 'cus001' and year(order_date)= 2018;

select c.customer_name from transactions t inner join customers c on c.customer_code = t.customer_code where customer_type= "brick & mortar";

select distinct c.customer_name from transactions t inner join customers c on c.customer_code = t.customer_code where customer_type= "brick & mortar";

select count(distinct c.customer_name) from transactions t inner join customers c on c.customer_code = t.customer_code where customer_type= "brick & mortar";

select avg(sales_amount) from transactions t inner join customers c on c.customer_code = t.customer_code where market_code = 'mark001';

select avg(sales_amount) from transactions t inner join customers c on c.customer_code = t.customer_code where market_code = 'mark001' and year(order_date) = 2018;

select max(sales_amount) from transactions t inner join customers c on c.customer_code = t.customer_code where market_code = 'mark001';

select * from transactions t inner join date d on d.date = t.order_date;

select sum(sales_amount) from transactions t inner join date d on d.date = t.order_date;

select sum(sales_amount) from transactions t inner join date d on d.date = t.order_date where month_name = 'october';

select avg(sales_qty) from transactions t inner join date d on d.date = t.order_date where year= 2019;

select max(sales_amount) from transactions t inner join date d on d.date = t.order_date where year= 2019 and customer_code = 'cus001';

select count(sales_qty) from transactions t inner join date d on d.date = t.order_date where product_code = 'prod001';

select count(sales_qty) from transactions t inner join date d on d.date = t.order_date where product_code = 'prod001' and year= 2018;

select avg(sales_amount) from transactions t inner join date d on d.date = t.order_date where year= 2017 and market_code= 'mark003';

select * from transactions t inner join markets m on m.markets_code = t.market_code;

select sum(sales_amount) from transactions t inner join markets m on m.markets_code = t.market_code;

select sum(sales_amount) from transactions t inner join markets m on m.markets_code = t.market_code where market_code = 'mark003';

select avg(sales_qty) from transactions t inner join markets m on m.markets_code = t.market_code;

select avg(sales_qty) from transactions t inner join markets m on m.markets_code = t.market_code where zone= 'north';

select distinct markets_name from transactions t inner join markets m on m.markets_code = t.market_code;

select count(distinct markets_name) from transactions t inner join markets m on m.markets_code = t.market_code;

select sales_amount from transactions t inner join markets m on m.markets_code = t.market_code order by sales_amount desc;

select sum(sales_amount) from transactions t inner join markets m on m.markets_code = t.market_code order by sales_amount desc;

select markets_name, sales_amount from transactions t inner join markets m on m.markets_code = t.market_code ;

select m.markets_name, t.sales_amount from transactions t inner join markets m on m.markets_code = t.market_code where year(order_date)= 2018;

select * from transactions t inner join products p on p.product_code = t.product_code;

select sum(sales_amount) from transactions t inner join products p on p.product_code = t.product_code;

select sum(sales_qty) from transactions t inner join products p on p.product_code = t.product_code;

select sum(sales_amount) from transactions t inner join products p on p.product_code = t.product_code where p.product_code= 'prod001';

select count(sales_qty) from transactions t inner join products p on p.product_code = t.product_code;

select count(sales_qty) from transactions t inner join products p on p.product_code = t.product_code where market_code= 'mark001';

select count(sales_qty) from transactions t inner join products p on p.product_code = t.product_code where market_code= 'mark001' and currency = 'inr\r';

select count(sales_qty) from transactions t inner join products p on p.product_code = t.product_code where market_code= 'mark001' and currency = 'inr\r' and product_type = 'own brand';

select avg(sales_qty) from transactions t inner join products p on p.product_code = t.product_code where market_code= 'mark001' and currency = 'inr\r';

select * from transactions t inner join products p on p.product_code = t.product_code order by sales_qty desc;

select customer_code, market_code from transactions t inner join products p on p.product_code = t.product_code order by sales_qty desc;

select customer_code, market_code from transactions t inner join products p on p.product_code = t.product_code order by sales_qty desc limit 10;

select t.customer_code, t.market_code from transactions t inner join products p on p.product_code = t.product_code;

select avg(sales_qty) from transactions t inner join products p on p.product_code = t.product_code;

select avg(sales_qty) from transactions t inner join products p on p.product_code = t.product_code where market_code= 'mark001';

select avg(sales_qty) from transactions t inner join products p on p.product_code = t.product_code where market_code= 'mark001' and currency = 'inr\r';

select avg(sales_qty) from transactions t inner join products p on p.product_code = t.product_code where market_code= 'mark001' and currency = 'inr\r' and product_type = 'own brand';

select min(sales_qty) from transactions t inner join products p on p.product_code = t.product_code;

select min(sales_qty) from transactions t inner join products p on p.product_code = t.product_code where market_code= 'mark001';

select min(sales_qty) from transactions t inner join products p on p.product_code = t.product_code where market_code= 'mark001' and currency = 'inr\r';

select min(sales_qty) from transactions t inner join products p on p.product_code = t.product_code where market_code= 'mark001' and currency = 'inr\r' and product_type = 'own brand';

select max(sales_qty) from transactions t inner join products p on p.product_code = t.product_code;

select max(sales_qty) from transactions t inner join products p on p.product_code = t.product_code where market_code= 'mark001';

select max(sales_qty) from transactions t inner join products p on p.product_code = t.product_code where market_code= 'mark001' and currency = 'inr\r';

select max(sales_qty) from transactions t inner join products p on p.product_code = t.product_code where market_code= 'mark001' and currency = 'inr\r' and product_type = 'own brand';

 select * from transactions t inner join date d on d.date= t.order_date
							  inner join customers c on c.customer_code= t.customer_code
							  inner join markets m on m.markets_code= t.market_code
                              inner join products p on p.product_code= t.product_code;
                              
                              
 select count(*) from transactions t inner join date d on d.date= t.order_date
							  inner join customers c on c.customer_code= t.customer_code
							  inner join markets m on m.markets_code= t.market_code
                              inner join products p on p.product_code= t.product_code;
                             							
                             







