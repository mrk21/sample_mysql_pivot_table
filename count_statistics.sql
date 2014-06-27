select
  days.date as date,
  ifnull(sum(counts.count),0) as count
from counts
right outer join (
  select date_add('2014-01-01', interval pivot.id - 1 day) as date
  from (
    select (@i:=@i+1) as id
    from (select (@i:=0)) as t0
    cross join (select 0 union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union select 7 union select 8 union select 9) as t1
    cross join (select 0 union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union select 7 union select 8 union select 9) as t2
    cross join (select 0 union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union select 7 union select 8 union select 9) as t3
    limit 366
  ) as pivot
) as days on days.date = counts.date
where year(days.date) = 2014
group by days.date
;
