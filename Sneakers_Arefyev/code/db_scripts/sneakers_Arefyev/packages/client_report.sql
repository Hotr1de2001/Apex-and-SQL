create or replace package client_report
is
    type report_rec is record (client_id number,
                               client_name varchar2(255),
                               country varchar2(255),
                               city varchar2(255),
                               membership varchar2(255),
                               transaction_date date,
                               value_amt number,
                               currency varchar2(255),
                               visiting_date date,
                               venue varchar2(255),
                               sports_type varchar2(255));
    type report_tbl is table of report_rec;
    function get_client_report (p_client_id number) RETURN report_tbl pipelined;
end client_report;
                              
create or replace package body client_report
is
    function get_client_report (p_client_id number) RETURN report_tbl pipelined
    is
        v_report_row report_rec;
        cursor c_report
        is
        select md.uk as client_id,
               md.first_name||' '||md.last_name as client_name,
               cod.name as country,
               cd.name as city,
               msd.name as membership,
               tf.value_day as transaction_date,
               tf.value_amt as value_amt,
               cd.ccode as currency,
               vf.value_day as visiting_date,
               vd.name as venue,
               sd.name as sports_type
        from   member_dim md
        join   membership_dim msd
          on   md.membership_uk = msd.uk
        join   city_dim cd
          on   cd.uk = md.base_city_uk
        join   country_dim cod
          on   cd.country_uk = cod.uk
        join   venue_dim vd
          on   vd.city_uk = cd.uk
        join   sportstype_dim sd
          on   sd.uk = vd.sportstype_uk
        join   transaction_fct tf
          on   md.uk = tf.member_uk
        join   visiting_fct vf
          on   md.uk = vf.member_uk
        join   currency_dim cd
          on   cd.uk = tf.currency_uk
        where md.uk = p_client_id
        order by md.uk;
    begin
        for r in c_report loop
            v_report_row := null;
            v_report_row.client_id := r.client_id;
            v_report_row.client_name := r.client_name;
            v_report_row.country := r.country;
            v_report_row.city := r.city;
            v_report_row.membership := r.membership;
            v_report_row.transaction_date := r.transaction_date;
            v_report_row.value_amt := r.value_amt;
            v_report_row.currency := r.currency;
            v_report_row.visiting_date := r.visiting_date;
            v_report_row.venue := r.venue;
            v_report_row.sports_type := r.sports_type;
            pipe row (v_report_row);
        end loop;
        return;
    end;
end client_report;