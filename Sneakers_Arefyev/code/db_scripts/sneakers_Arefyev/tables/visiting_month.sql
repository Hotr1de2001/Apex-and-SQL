create table visiting_month (name varchar2(256),
                             month_year varchar2(7),
                             city varchar2(128),
                             venue varchar2(128),
                             cnt_visit number);
                                 
COMMENT ON TABLE visiting_month IS 'Месячный агрегат посещений клубов';
COMMENT ON COLUMN visiting_month.name IS 'Имя и фамилия клиента';
COMMENT ON COLUMN visiting_month.month_year IS 'Месяц и год посещения';
COMMENT ON COLUMN visiting_month.city IS 'Город';
COMMENT ON COLUMN visiting_month.venue IS 'Клуб';
COMMENT ON COLUMN visiting_month.cnt_visit IS 'Количество посещений';