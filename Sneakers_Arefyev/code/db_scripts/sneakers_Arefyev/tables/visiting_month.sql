create table visiting_month (name varchar2(256),
                             month_year varchar2(7),
                             city varchar2(128),
                             venue varchar2(128),
                             cnt_visit number);
                                 
COMMENT ON TABLE visiting_month IS '�������� ������� ��������� ������';
COMMENT ON COLUMN visiting_month.name IS '��� � ������� �������';
COMMENT ON COLUMN visiting_month.month_year IS '����� � ��� ���������';
COMMENT ON COLUMN visiting_month.city IS '�����';
COMMENT ON COLUMN visiting_month.venue IS '����';
COMMENT ON COLUMN visiting_month.cnt_visit IS '���������� ���������';