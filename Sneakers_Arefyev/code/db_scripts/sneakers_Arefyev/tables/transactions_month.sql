create table transactions_month (name varchar2(256),
                                 month_year varchar2(7),       
                                 value_amt_sum number,
                                 currency_code varchar2(16));
                                 
COMMENT ON TABLE transactions_month IS '�������� ������� ��������� �� �����';
COMMENT ON COLUMN transactions_month.name IS '��� �������';
COMMENT ON COLUMN transactions_month.month_year IS '����� � ��� ��������';
COMMENT ON COLUMN transactions_month.value_amt_sum IS '�����';
COMMENT ON COLUMN transactions_month.currency_code IS '��� ������';