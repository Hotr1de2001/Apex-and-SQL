create table visiting (first_name varchar2(64),
                       last_name varchar2(64),
                       VALUE_DAY date,
                       CITY varchar2(32),
                       VENUE varchar2(32),
                       STANDALONE_FLG varchar2(1));

COMMENT ON TABLE visiting IS 'Выписка посещений из сторонних клубов';
COMMENT ON COLUMN visiting.first_name IS 'Имя';
COMMENT ON COLUMN visiting.last_name IS 'Фамилия';
COMMENT ON COLUMN visiting.VALUE_DAY IS 'Дата посещения';
COMMENT ON COLUMN visiting.CITY IS 'Город';
COMMENT ON COLUMN visiting.VENUE IS 'Клуб';
COMMENT ON COLUMN visiting.STANDALONE_FLG IS 'Флаг занятия без тренера';