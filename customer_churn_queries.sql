create database customer_churn;

use customer_churn;

rename table churn_project to customer_churn;

select*from customer_churn limit 10;

select count(*) from customer_churn;

describe customer_churn;

# churn yes or no
select churn,count(*) as total
from customer_churn
group by churn;

# gender vs churn
select gender,Churn,count(*) as total
from customer_churn
group by gender,Churn
order by gender,churn;

# average monthly charges for churn
select Churn,avg(MonthlyCharges) as avg_monthly_charges
from customer_churn
group by Churn;

# contract type vs churn
select Contract,Churn ,count(*) as total
from customer_churn
group by Contract,Churn
order by Contract;

# average tenure
select churn ,avg(tenure) as avg_tenure
from customer_churn 
group by Churn;

#payment method vs churn
select Churn,PaymentMethod ,count(*) as total
from customer_churn
group by PaymentMethod,Churn;