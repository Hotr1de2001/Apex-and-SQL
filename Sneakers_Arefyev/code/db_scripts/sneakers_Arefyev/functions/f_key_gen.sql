create or replace function f_key_gen return number
as
v_seq number;
begin
    select s_unique_key.nextval 
    into v_seq
    from dual;
    return v_seq;
end;