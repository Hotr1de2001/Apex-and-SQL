create table sportstype_dim (uk number not null,
                             least_membership_uk clob not null,
                             name varchar2(256),
                             constraint sportstype_dim_pk primary key (uk));

COMMENT ON TABLE sportstype_dim IS '���������� ���������� �����';
COMMENT ON COLUMN sportstype_dim.uk IS '���������� ���� ���������� ������';
COMMENT ON COLUMN sportstype_dim.least_membership_uk IS '��������� ���� �� ����������� ��� ��������� � ������� �������� ���������� ������';
COMMENT ON COLUMN sportstype_dim.name IS '������������ ���������� ������';

insert into sportstype_dim (uk, name, least_membership_uk) values (f_key_gen(), 'Sport A', 1360);
insert into sportstype_dim (uk, name, least_membership_uk) values (f_key_gen(), 'Sport B', 1361);
insert into sportstype_dim (uk, name, least_membership_uk) values (f_key_gen(), 'Sport C', 1362);
insert into sportstype_dim (uk, name, least_membership_uk) values (f_key_gen(), 'Sport D', 1363);
insert into sportstype_dim (uk, name, least_membership_uk) values (f_key_gen(), 'Sport E', 1364);
insert into sportstype_dim (uk, name, least_membership_uk) values (f_key_gen(), 'Sport F', 1364);
insert into sportstype_dim (uk, name, least_membership_uk) values (f_key_gen(), 'Sport G', 1365);