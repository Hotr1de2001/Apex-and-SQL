create table transaction_fct (member_uk number not null,
                              membership_uk number not null,
                              currency_uk number not null,
                              value_day date not null,
                              value_amt number not null,
                              foreign key (member_uk) references member_dim (uk),
                              foreign key (membership_uk) references membership_dim (uk),
                              foreign key (currency_uk) references currency_dim (uk));

COMMENT ON TABLE transaction_fct IS 'Факты денежных переводов';
COMMENT ON COLUMN transaction_fct.member_uk IS 'Ссылочный ключ на клиента';
COMMENT ON COLUMN transaction_fct.membership_uk IS 'Ссылочный ключ на программу клиента';
COMMENT ON COLUMN transaction_fct.currency_uk IS 'Ссылочный ключ на валюту';
COMMENT ON COLUMN transaction_fct.value_day IS 'Дата транзакции';
COMMENT ON COLUMN transaction_fct.value_amt IS 'Сумма выплаты';

insert into transaction_fct (value_day, member_uk, membership_uk, currency_uk, value_amt)
values (TO_DATE('01.04.2021', 'dd.mm.yyyy'), 1366, 1358, 1351, 5000);

insert into transaction_fct (value_day, member_uk, membership_uk, currency_uk, value_amt)
values (TO_DATE('01.04.2021', 'dd.mm.yyyy'), 1367, 1359, 1352, 67.68);

insert into transaction_fct (value_day, member_uk, membership_uk, currency_uk, value_amt)
values (TO_DATE('01.04.2021', 'dd.mm.yyyy'), 1368, 1360, 1352, 78.96);

insert into transaction_fct (value_day, member_uk, membership_uk, currency_uk, value_amt)
values (TO_DATE('01.04.2021', 'dd.mm.yyyy'), 1369, 1361, 1353, 109.79);

insert into transaction_fct (value_day, member_uk, membership_uk, currency_uk, value_amt)
values (TO_DATE('01.04.2021', 'dd.mm.yyyy'), 1370, 1362, 1354, 3365.32);

insert into transaction_fct (value_day, member_uk, membership_uk, currency_uk, value_amt)
values (TO_DATE('01.04.2021', 'dd.mm.yyyy'), 1371, 1363, 1353, 137.24);

insert into transaction_fct (value_day, member_uk, membership_uk, currency_uk, value_amt)
values (TO_DATE('01.04.2021', 'dd.mm.yyyy'), 1372, 1364, 1351, 12000);

insert into transaction_fct (value_day, member_uk, membership_uk, currency_uk, value_amt)
values (TO_DATE('01.04.2021', 'dd.mm.yyyy'), 1373, 1365, 1355, 22543.09);