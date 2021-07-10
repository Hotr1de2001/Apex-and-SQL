create table member_dim (uk number not null,
                         base_city_uk number not null,
                         membership_uk number not null,
                         first_name varchar2(64),
                         last_name varchar2(64),
                         constraint member_dim_pk primary key (uk),
                         foreign key (base_city_uk) references city_dim (uk),
                         foreign key (membership_uk) references membership_dim (uk));                       

COMMENT ON TABLE member_dim IS '—правочник клиентов';
COMMENT ON COLUMN member_dim.uk IS '”никальный ключ клиента';
COMMENT ON COLUMN member_dim.base_city_uk IS '—сылочный ключ на базовый город клиента';
COMMENT ON COLUMN member_dim.membership_uk IS '—сылочный ключ на программу клиента';
COMMENT ON COLUMN member_dim.first_name IS '»м€';
COMMENT ON COLUMN member_dim.last_name IS '‘амили€';

insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk)
values (f_key_gen(), 'Vladislav', 'Arefyev', 1344, 1358);

insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk)
values (f_key_gen(), 'Andrey', 'Lebedev', 1345, 1359);

insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk)
values (f_key_gen(), 'Eduard', 'Yaushev', 1346, 1360);

insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk)
values (f_key_gen(), 'Regina', 'Gataullina', 1347, 1361);

insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk)
values (f_key_gen(), 'Ilfat', 'Aminov', 1348, 1362);

insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk)
values (f_key_gen(), 'Van', 'Nguen', 1349, 1363);

insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk)
values (f_key_gen(), 'Sergey', 'Maslov', 1344, 1364);

insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk)
values (f_key_gen(), 'Bulat', 'Urazbahtin', 1350, 1365);