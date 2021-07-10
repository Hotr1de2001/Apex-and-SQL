create table visiting_fct (member_uk number not null,
                           venue_uk number not null,
                           city_uk number not null,
                           value_day date,
                           standalone_flg varchar2(1),
                           foreign key (member_uk) references member_dim (uk),
                           foreign key (venue_uk) references venue_dim (uk),
                           foreign key (city_uk) references city_dim (uk));

COMMENT ON TABLE visiting_fct IS 'Факты посещения клубов клиентами';
COMMENT ON COLUMN visiting_fct.member_uk IS 'Ссылочный ключ на клиента';
COMMENT ON COLUMN visiting_fct.venue_uk IS 'Ссылочный ключ на клуб';
COMMENT ON COLUMN visiting_fct.city_uk IS 'Ссылочный ключ на город в котором расположен клуб';
COMMENT ON COLUMN visiting_fct.value_day IS 'Дата тренировки';
COMMENT ON COLUMN visiting_fct.standalone_flg IS 'Флаг работы в одиночестве, без тренера';

insert into visiting_fct (member_uk, venue_uk, city_uk, value_day, standalone_flg)
values (1366, 1381, 1344, TO_DATE('01.05.2021', 'dd.mm.yyyy'), 'Y');

insert into visiting_fct (member_uk, venue_uk, city_uk, value_day, standalone_flg)
values (1367, 1382, 1345, TO_DATE('01.05.2021', 'dd.mm.yyyy'), 'Y');

insert into visiting_fct (member_uk, venue_uk, city_uk, value_day, standalone_flg)
values (1368, 1383, 1346, TO_DATE('02.05.2021', 'dd.mm.yyyy'), 'N');

insert into visiting_fct (member_uk, venue_uk, city_uk, value_day, standalone_flg)
values (1369, 1384, 1347, TO_DATE('02.05.2021', 'dd.mm.yyyy'), 'N');

insert into visiting_fct (member_uk, venue_uk, city_uk, value_day, standalone_flg)
values (1370, 1385, 1348, TO_DATE('03.05.2021', 'dd.mm.yyyy'), 'Y');

insert into visiting_fct (member_uk, venue_uk, city_uk, value_day, standalone_flg)
values (1371, 1386, 1349, TO_DATE('04.05.2021', 'dd.mm.yyyy'), 'N');

insert into visiting_fct (member_uk, venue_uk, city_uk, value_day, standalone_flg)
values (1372, 1381, 1344, TO_DATE('05.05.2021', 'dd.mm.yyyy'), 'Y');

insert into visiting_fct (member_uk, venue_uk, city_uk, value_day, standalone_flg)
values (1373, 1387, 1350, TO_DATE('05.05.2021', 'dd.mm.yyyy'), 'N');