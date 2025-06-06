-- Problem 1: Top Travellers (https://leetcode.com/problems/top-travellers/)
select name, ifnull(sum(r.distance), 0) as travelled_distance 
from users u
left join rides r on u.id = r.user_id
group by u.id
order by travelled_distance desc, name asc