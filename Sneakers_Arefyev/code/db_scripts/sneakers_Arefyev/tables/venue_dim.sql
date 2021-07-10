create table venue_dim (uk number not null,
                        city_uk number not null,
                        least_membership_uk number not null,
                        sportstype_uk number not null,
                        name varchar2(256),
                        constraint venue_dim_pk primary key (uk),
                        foreign key (city_uk) references city_dim (uk),
                        foreign key (least_membership_uk) references membership_dim (uk),
                        foreign key (sportstype_uk) references sportstype_dim (uk));

COMMENT ON TABLE venue_dim IS 'Справочник клубов';
COMMENT ON COLUMN venue_dim.uk IS 'Уникальный ключ клуба';
COMMENT ON COLUMN venue_dim.city_uk IS 'Ссылочный ключ на город в котором расположен клуб';
COMMENT ON COLUMN venue_dim.least_membership_uk IS 'Ссылочный ключ на минимальный тип программы с которой доступен клуб';
COMMENT ON COLUMN venue_dim.sportstype_uk IS 'Ссылочный ключ на спортивную услугу в этом клубе';
COMMENT ON COLUMN venue_dim.name IS 'Наименование клуба';

insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen(), 'Kazan club', 1344, 1358, 1374);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen(), 'Brussels club', 1345, 1359, 1375);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen(), 'Berlin club', 1346, 1360, 1376);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen(), 'Oslo club', 1347, 1360, 1377);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen(), 'Kiev club', 1348, 1362, 1378);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen(), 'Stockholm club', 1349, 1363, 1379);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen(), 'Tokyo club', 1350, 1365, 1380);