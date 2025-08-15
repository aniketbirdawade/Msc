
/* 
Display the fname, lname and town of all customer who have placed orders, including only those customers who have corresponding entries in both the orderinfo and orderline tables.
*/
select fname, lname, town 
from customer , orderinfo, orderline
where customer.customer_id = orderinfo.customer_id
and orderinfo.orderinfo_id = orderline.orderinfo_id;


