select *
from Category c  left outer join NewProduct n
on c.CategoryID=n.CategoryID

select *
from Category c  left  join NewProduct n
on c.CategoryID=n.CategoryID

select *
from Category c  right  join NewProduct n
on c.CategoryID<n.CategoryID

select *
from Category c    join NewProduct n
on c.CategoryID=n.CategoryID

select *
from Category c  inner join NewProduct n
on c.CategoryID <> n.CategoryID

select c.CategoryID, n.CategoryID
from Category c  , NewProduct n
where c.CategoryID <n.CategoryID







