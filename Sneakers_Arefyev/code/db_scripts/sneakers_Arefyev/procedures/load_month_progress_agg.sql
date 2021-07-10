create or replace procedure load_month_progress_agg (p_month number, p_year number)
as
begin
delete from month_progress_agg where month = p_month and year = p_year;
insert into month_progress_agg (member_uk, sportstype_uk, visiting_cnt, month, year)
    select md.uk as member_uk,
           sd.uk as sportstype_uk,
           count(vf.member_uk) as visiting_cnt,
           to_number(to_char(vf.value_day, 'mm')) as month,
           to_number(to_char(vf.value_day, 'yyyy')) as year
    from   member_dim md
    join   membership_dim msd
    on     md.membership_uk = msd.uk
    join   city_dim cd
    on     cd.uk = md.base_city_uk
    join   country_dim cod
    on     cd.country_uk = cod.uk
    join   venue_dim vd
    on     vd.city_uk = cd.uk
    join   sportstype_dim sd
    on     sd.uk = vd.sportstype_uk
    join   visiting_fct vf
    on     vf.member_uk = md.uk
    where  to_number(to_char(vf.value_day, 'mm')) = p_month
    and    to_number(to_char(vf.value_day, 'yyyy')) = p_year
    group by md.uk, sd.uk, vf.value_day;
end;