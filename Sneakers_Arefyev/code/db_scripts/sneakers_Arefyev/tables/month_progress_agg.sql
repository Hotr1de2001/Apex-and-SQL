create table month_progress_agg (member_uk number not null,
                                 sportstype_uk number not null,
                                 visiting_cnt number not null,
                                 month number not null,
                                 year number not null,
                                 foreign key (member_uk) references member_dim (uk),
                                 foreign key (sportstype_uk) references sportstype_dim (uk));

COMMENT ON TABLE month_progress_agg IS 'Месячный агрегат использования спортивных услуг клиентами';
COMMENT ON COLUMN month_progress_agg.member_uk IS 'Ссылочный ключ на клиента';
COMMENT ON COLUMN month_progress_agg.sportstype_uk IS 'Ссылочный ключ на спортивную услугу';
COMMENT ON COLUMN month_progress_agg.visiting_cnt IS 'Количество посещений в месяц';
COMMENT ON COLUMN month_progress_agg.month IS 'Номер месяца';
COMMENT ON COLUMN month_progress_agg.year IS 'Номер года';