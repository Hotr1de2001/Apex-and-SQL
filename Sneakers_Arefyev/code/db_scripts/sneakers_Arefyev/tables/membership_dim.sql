create table membership_dim (uk number not null,
                             ccode varchar2(1) not null,
                             name varchar2(64),
                             monthly_limit number,
                             cancellation_period number,
                             massage_amt number,
                             ems_amt number,
                             price_rate number not null,
                             constraint membership_dim_pk primary key (uk));                    

COMMENT ON TABLE membership_dim IS 'Справочник программ членства';
COMMENT ON COLUMN membership_dim.uk IS 'Уникальный ключ программы членства';
COMMENT ON COLUMN membership_dim.ccode IS 'Символьный код программы';
COMMENT ON COLUMN membership_dim.name IS 'Наименование программы';
COMMENT ON COLUMN membership_dim.monthly_limit IS 'Месячный лимит';
COMMENT ON COLUMN membership_dim.cancellation_period IS 'Период работы программы';
COMMENT ON COLUMN membership_dim.massage_amt IS 'Стоимость массажа';
COMMENT ON COLUMN membership_dim.ems_amt IS 'Стоимость EMS вибрационной тренировки';
COMMENT ON COLUMN membership_dim.price_rate IS 'Цена';

insert into membership_dim (uk, ccode, name, monthly_limit, cancellation_period, massage_amt, ems_amt, price_rate)
values (f_key_gen(), 'A', 'Program A', 1, 1, 1000, 1200, 5000);

insert into membership_dim (uk, ccode, name, monthly_limit, cancellation_period, massage_amt, ems_amt, price_rate)
values (f_key_gen(), 'B', 'Program B', 2, 1, 1500, 1300, 6000);

insert into membership_dim (uk, ccode, name, monthly_limit, cancellation_period, massage_amt, ems_amt, price_rate)
values (f_key_gen(), 'C', 'Program C', 2, 2, 2000, 1400, 7000);

insert into membership_dim (uk, ccode, name, monthly_limit, cancellation_period, massage_amt, ems_amt, price_rate)
values (f_key_gen(), 'D', 'Program D', 3, 2, 3000, 1500, 8000);

insert into membership_dim (uk, ccode, name, monthly_limit, cancellation_period, massage_amt, ems_amt, price_rate)
values (f_key_gen(), 'E', 'Program E', 3, 3, 3500, 1600, 9000);

insert into membership_dim (uk, ccode, name, monthly_limit, cancellation_period, massage_amt, ems_amt, price_rate)
values (f_key_gen(), 'F', 'Program F', 4, 3, 4000, 1700, 10000);

insert into membership_dim (uk, ccode, name, monthly_limit, cancellation_period, massage_amt, ems_amt, price_rate)
values (f_key_gen(), 'G', 'Program G', 4, 4, 4500, 1800, 12000);

insert into membership_dim (uk, ccode, name, monthly_limit, cancellation_period, massage_amt, ems_amt, price_rate)
values (f_key_gen(), 'H', 'Program H', 5, 5, 5500, 2000, 15000);