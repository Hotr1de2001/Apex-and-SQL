create or replace view detailed_all_tables
as
select md.first_name||' '||md.last_name as name,
       msd.name as membership,
       cod.name as country,
       cd.name as city,
       vd.name as venue,
       sd.name as sports_type
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
on     sd.uk = vd.sportstype_uk;