function check_pos_int(x, msg)
if x <= 0 || mod(x, 1.0) ~= 0.0
    error('msg');
end
return