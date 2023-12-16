
select Max(num) as num 
from (select num from mynumbers 
group by num 
having count(num)=1
order by num desc
) as single_num;
