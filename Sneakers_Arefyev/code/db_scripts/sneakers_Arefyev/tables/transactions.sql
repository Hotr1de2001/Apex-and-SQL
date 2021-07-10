create table transactions (first_name varchar2(64),
                           last_name varchar2(64),
                           VALUE_DAY date,
                           CURRENCY_CODE varchar2(32),
                           MEMBERSHIP_CODE varchar2(32),
                           VALUE_AMT number);

COMMENT ON TABLE transactions IS 'Выписка транзакций из банка';
COMMENT ON COLUMN transactions.first_name IS 'Имя';
COMMENT ON COLUMN transactions.last_name IS 'Фамилия';
COMMENT ON COLUMN transactions.VALUE_DAY IS 'Дата операции';
COMMENT ON COLUMN transactions.CURRENCY_CODE IS 'Код валюты';
COMMENT ON COLUMN transactions.MEMBERSHIP_CODE IS 'Код программы членства';
COMMENT ON COLUMN transactions.VALUE_AMT IS 'Сумма';