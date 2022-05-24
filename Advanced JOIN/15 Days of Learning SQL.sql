/*join -- Difficulty Hard ( SQL Intermediate)

Problem Statement: https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem?isFullScreen=true
*/

with temp as (
select submission_date,hacker_id,count(submission_id)c
    from submissions a
    group by submission_date,hacker_id
),
hacker as (
select submission_date,hacker_id, c ,row_number()over (partition by submission_date order by c desc, hacker_id) rank
    from temp
),
date as (
select distinct submission_date, row_number()over(order by submission_date) rank from (select distinct submission_date from submissions)a 
),
rank as (
select a.submission_date,rank,hacker_id,count(b.submission_date) c from date a
left join temp b on a.submission_date >=b.submission_date  
group by a.submission_date,rank,hacker_id
having count(b.submission_date) =rank
    )
    
select a.submission_date,count(a.hacker_id),b.hacker_id,name from rank a 
left join hacker b on a.submission_date=b.submission_date and b.rank=1
left join hackers c on b.hacker_id=c.hacker_id
group by a.submission_date,b.hacker_id,name 
order by 1
        

/*
Your Output (stdout)
2016-03-01 112 81314 Denise
2016-03-02 59 39091 Ruby
2016-03-03 51 18105 Roy
2016-03-04 49 533 Patrick
2016-03-05 49 7891 Stephanie
2016-03-06 49 84307 Evelyn
2016-03-07 35 80682 Deborah
2016-03-08 35 10985 Timothy
2016-03-09 35 31221 Susan
2016-03-10 35 43192 Bobby
2016-03-11 35 3178 Melissa
2016-03-12 35 54967 Kenneth
2016-03-13 35 30061 Julia
2016-03-14 35 32353 Rose
2016-03-15 35 27789 Helen
*/