with cte as (
    select *,
        case
            when brand2 > brand1 then concat(brand2, brand1, year)
            else concat(brand1, brand2, year)
        end as row_id
    from brands
)
select brand1,
    brand2,
    year,
    custom1,
    custom2,
    custom3,
    custom4,
    rrow
from (
        select *,
            row_number() over (
                partition by row_id
                order by row_id
            ) as rrow
        from cte
    ) as sbq
where rrow = 1
    or (custom1 != custom3)
    or (custom2 != custom4)