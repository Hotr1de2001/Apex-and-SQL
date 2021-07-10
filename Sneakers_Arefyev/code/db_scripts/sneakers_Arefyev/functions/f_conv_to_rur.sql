create or replace function f_conv_to_rur (p_rur number, p_rate number) return number
as
v_rur number;
begin
    v_rur := p_rur*p_rate;
    return v_rur;
end;