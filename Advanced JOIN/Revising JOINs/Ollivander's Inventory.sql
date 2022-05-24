join -- Difficulty Medium ( SQL Intermediate)

Problem Statement: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true

select a.id, b.age, a.coins_needed, a.power
from wands a join wands_property b
on a.code=b.code
where b.is_evil=0
and a.coins_needed=(select min(c.coins_needed)
                    from wands c join wands_property d
                    on c.code=d.code
                    where d.age=b.age
                    and c.power=a.power)
order by a.power desc, b.age desc

/*
Your Output (stdout)
1038 496 4789 10
1130 494 9439 10
1315 492 4126 10
9 491 7345 10
858 483 4352 10
1164 481 9831 10
1288 464 4952 10
(664 rows)
*/