create table currency_dim (uk number not null,
                           iso_ncode number not null,
                           ccode varchar2(8),
                           name varchar2(256),
                           constraint currency_dim_pk primary key (uk));                   

COMMENT ON TABLE currency_dim IS '���������� �����';
COMMENT ON COLUMN currency_dim.uk IS '���������� ���� ������';
COMMENT ON COLUMN currency_dim.iso_ncode IS '�������� ISO ��� ������';
COMMENT ON COLUMN currency_dim.ccode IS '���������� ��� ������';
COMMENT ON COLUMN currency_dim.name IS '������������ ������';

insert into currency_dim (uk, iso_ncode, ccode, name) values (f_key_gen(), 643, 'RUB', 'Russian ruble');
insert into currency_dim (uk, iso_ncode, ccode, name) values (f_key_gen(), 978, 'EUR', 'Euro');
insert into currency_dim (uk, iso_ncode, ccode, name) values (f_key_gen(), 840, 'USD', 'US dollar');
insert into currency_dim (uk, iso_ncode, ccode, name) values (f_key_gen(), 980, 'UAH', 'Hryvnia');
insert into currency_dim (uk, iso_ncode, ccode, name) values (f_key_gen(), 392, 'JPY', 'Yen');
insert into currency_dim (uk, iso_ncode, ccode, name) values (f_key_gen(), 752, 'SEK', 'Swedish Krona');
insert into currency_dim (uk, iso_ncode, ccode, name) values (f_key_gen(), 933, 'BYN', 'Belarusian ruble');