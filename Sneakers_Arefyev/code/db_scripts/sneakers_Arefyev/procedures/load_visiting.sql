create or replace procedure load_visiting (p_month number, p_year number)
as
v_month_year varchar2(7) := to_char(p_month, 'fm09')||'.'||to_char(p_year, 'fm9999');
begin
    delete from visiting_month where month_year = v_month_year;
    insert into visiting_month (name, month_year, city, venue, cnt_visit)
    select first_name||' '||last_name as name, 
       to_char(value_day, 'mm.yyyy') as month_year,
       city,
       venue,     
       count(first_name||' '||last_name) as cnt_visit
    from visiting
    where to_char(value_day, 'mm') = p_month
    and to_char(value_day, 'yyyy') = p_year
    group by first_name||' '||last_name, city, venue, to_char(value_day, 'mm.yyyy')
    order by name;
end;