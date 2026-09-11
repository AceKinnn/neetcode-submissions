-- Write your query below
with top_score as (
    select
        student_id,
        max(score) as highest_score
    from exam_results
    group by student_id
)

select distinct on (e.student_id)
    e.student_id,
    e.exam_id,
    e.score
from exam_results e
join top_score t on e.student_id = t.student_id
where e.score = t.highest_score
order by e.student_id asc