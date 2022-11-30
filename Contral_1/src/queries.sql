select distinct first_name, middle_name, last_name
from client
join loan
on client.loan_id = loan.id
where status = 'открыт';

with loan_city
         as (select city.branch_id, sum(loan.amount_new_client) as sum1, sum(loan.amount_old_client) as sum2
             from city, loan
             where branch.id = city.branch_id
             group by city.branch_id),
     max_cash
         as (select max(sum1) as max_cash1, max(sum2) as max_cash2
             from loan_city)
select branch_id, sum1, sum2
from loan_city, max_cash1, max_cash2
where sum1 in (max_cash1), sum2 in (max_cash2);



select client.first_name, client.middle_name, client.last_name, client.address, SUM(amount_new_client), SUM(amount_old_client)
from client
join loan
on client.loan_id = loan.id
where status = 'открыт' AND DATEDIFF(start_date, finish_date) > 61
group by client.first_name, client.middle_name, client.last_name, client.address
order by sum(amount_old_client) DESC, sum(amount_new_client) DESC;






