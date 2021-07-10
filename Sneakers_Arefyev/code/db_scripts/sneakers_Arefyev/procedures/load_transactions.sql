create or replace procedure load_transactions (p_month number, p_year number)
as
v_month_year varchar2(7) := to_char(p_month, 'fm09')||'.'||to_char(p_year, 'fm9999');
begin
    delete from transactions_month where month_year = v_month_year;
    insert into transactions_month (name, month_year, value_amt_sum, currency_code)
        select first_name||' '||last_name as name, to_char(value_day, 'mm.yyyy') as month_year, sum(value_amt) as value_amt_sum, currency_code
        from transactions
        where to_char(value_day, 'mm') = p_month
        and   to_char(value_day, 'yyyy') = p_year
        group by first_name, last_name, to_char(value_day, 'mm.yyyy'), currency_code 
        order by name;
end;