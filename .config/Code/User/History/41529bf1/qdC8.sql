/*  1
Display count of recordss in customer, orderinfo and orderline.

select count(*) from customer, orderinfo, orderline;
*/

/*  2

Display the fname, lname and town of all customer who have placed orders, including only those customers who have corresponding entries in both the orderinfo and orderline tables.

*/

/* 3
select fname, lname, town 
from customer , orderinfo, orderline
where customer.customer_id = orderinfo.customer_id
and orderinfo.orderinfo_id = orderline.orderinfo_id;
*/


/* 4
Disaplay first name and  last name of customer who order between 1 jan 2000 to 1 june 2000

select fname, lname
from customer , orderinfo, orderline
where customer.customer_id = orderinfo.customer_id
and orderinfo.orderinfo_id = orderline.orderinfo_id
and orderinfo.date_shipped between '2000-01-01' and '2000-06-01';
*/


/* 5
Disaplay first name and  last name of customer who buy quantity 1

select fname, lname
from customer, orderinfo, orderline
where customer.customer_id = orderinfo.customer_id
and orderinfo.orderinfo_id = orderline.orderinfo_id
and orderline.quantity<=1;

*/  

/*      6
Display name, description and quantity.

select fname, lname, description, quantity
from customer, orderinfo, orderline, item
where customer.customer_id = orderinfo.customer_id
and orderinfo.orderinfo_id = orderline.orderinfo_id
and orderline.item_id = item.item_id;

*/

/*      7
Display order placed in town Lowton.

select fname, lname, orderinfo, date_placed
from customer, orderinfo, orderline
where customer.customer_id = orderinfo.customer_id
and orderinfo.orderinfo_id = orderline.orderinfo_id
and customer.town = 'Lowton';

*/

/*      8
Display customer who buy Wood Puzzle

select distinct fname, lname, town
from customer, orderinfo, orderline, item
where customer.customer_id = orderinfo.customer_id
and orderinfo.orderinfo_id = orderline.orderinfo_id
and orderline.item_id = item.item_id
and item.description = 'Wood Puzzle';
*/

/*      9
Display customer who order without cost

select fname, lname, orderinfo.orderinfo_id
from customer, orderinfo, orderline
where customer.customer_id = orderinfo.customer_id
and orderinfo.orderinfo_id = orderline.orderinfo_id
and shipping = 0;

*/
/*      10
Find customer whos order shipped after july 2000

select fname, lname, description
from customer, orderinfo, orderline, item
where customer.customer_id = orderinfo.customer_id
and orderinfo.orderinfo_id = orderline.orderinfo_id
and orderline.item_id = item.item_id
and date_shipped > '2000-07-01';

*/

/*

Find stock quantity of all purchsed items

select description, quantity
from item, orderline
where item.item_id = orderline.item_id
and item.item_id = orderline.item_id;

*/

/*
List customers who purchased Fan Large

select fname, lname
from customer, orderinfo, orderline, item
where customer.customer_id = orderinfo.customer_id
and orderinfo.orderinfo_id = orderline.orderinfo_id
and orderline.item_id = item.item_id
and item.description = 'Fan Large';

*/

