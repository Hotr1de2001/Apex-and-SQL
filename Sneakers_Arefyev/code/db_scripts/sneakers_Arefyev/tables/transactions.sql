create table transactions (first_name varchar2(64),
                           last_name varchar2(64),
                           VALUE_DAY date,
                           CURRENCY_CODE varchar2(32),
                           MEMBERSHIP_CODE varchar2(32),
                           VALUE_AMT number);

COMMENT ON TABLE transactions IS '������� ���������� �� �����';
COMMENT ON COLUMN transactions.first_name IS '���';
COMMENT ON COLUMN transactions.last_name IS '�������';
COMMENT ON COLUMN transactions.VALUE_DAY IS '���� ��������';
COMMENT ON COLUMN transactions.CURRENCY_CODE IS '��� ������';
COMMENT ON COLUMN transactions.MEMBERSHIP_CODE IS '��� ��������� ��������';
COMMENT ON COLUMN transactions.VALUE_AMT IS '�����';