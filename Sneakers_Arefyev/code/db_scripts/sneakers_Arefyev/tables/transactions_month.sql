create table transactions_month (name varchar2(256),
                                 month_year varchar2(7),       
                                 value_amt_sum number,
                                 currency_code varchar2(16));
                                 
COMMENT ON TABLE transactions_month IS 'ћес€чный агрегат транзаций из банка';
COMMENT ON COLUMN transactions_month.name IS '»м€ клиента';
COMMENT ON COLUMN transactions_month.month_year IS 'ћес€ц и год операции';
COMMENT ON COLUMN transactions_month.value_amt_sum IS '—умма';
COMMENT ON COLUMN transactions_month.currency_code IS ' од валюты';