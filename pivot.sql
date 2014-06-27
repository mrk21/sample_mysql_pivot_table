select (@i:=@i+1) as id
from (select (@i:=0)) as t0
cross join (select 0 union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union select 7 union select 8 union select 9) as t1
cross join (select 0 union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union select 7 union select 8 union select 9) as t2
;
