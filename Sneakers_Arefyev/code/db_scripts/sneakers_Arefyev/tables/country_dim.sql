create table country_dim (uk number not null,
                          ccode varchar2(8),
                          name varchar2(32),
                          constraint country_dim_pk primary key (uk));

COMMENT ON TABLE country_dim IS 'Справочник стран';
COMMENT ON COLUMN country_dim.uk IS 'Уникальный ключ страны';
COMMENT ON COLUMN country_dim.ccode IS 'Символьный код страны';
COMMENT ON COLUMN country_dim.name IS 'Наименование страны';

insert into country_dim (uk, ccode, name) values (f_key_gen(), 'RUS', 'Russia');
insert into country_dim (uk, ccode, name) values (f_key_gen(), 'BEL', 'Belgium');
insert into country_dim (uk, ccode, name) values (f_key_gen(), 'DEU', 'Deutschland');
insert into country_dim (uk, ccode, name) values (f_key_gen(), 'NOR', 'Norway');
insert into country_dim (uk, ccode, name) values (f_key_gen(), 'UKR', 'Ukraine');
insert into country_dim (uk, ccode, name) values (f_key_gen(), 'SWE', 'Sweden');
insert into country_dim (uk, ccode, name) values (f_key_gen(), 'JPN', 'Japan');