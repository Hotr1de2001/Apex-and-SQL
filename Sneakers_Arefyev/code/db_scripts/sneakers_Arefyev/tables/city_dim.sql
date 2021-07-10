create table city_dim (uk number not null,
                       country_uk number not null,
                       name varchar2(32),
                       constraint city_dim_pk primary key (uk),
                       foreign key (country_uk) references country_dim (uk));

COMMENT ON TABLE city_dim IS 'Справочник городов';
COMMENT ON COLUMN city_dim.uk IS 'Уникальный ключ города';
COMMENT ON COLUMN city_dim.name IS 'Наименование города';
COMMENT ON COLUMN city_dim.country_uk IS 'Ссылочный ключ на страну';

insert into city_dim (uk, name, country_uk) values (f_key_gen(), 'Kazan', 1337);
insert into city_dim (uk, name, country_uk) values (f_key_gen(), 'Brussels', 1338);
insert into city_dim (uk, name, country_uk) values (f_key_gen(), 'Berlin', 1339);
insert into city_dim (uk, name, country_uk) values (f_key_gen(), 'Oslo', 1340);
insert into city_dim (uk, name, country_uk) values (f_key_gen(), 'Kiev', 1341);
insert into city_dim (uk, name, country_uk) values (f_key_gen(), 'Stockholm', 1342);
insert into city_dim (uk, name, country_uk) values (f_key_gen(), 'Tokyo', 1343);