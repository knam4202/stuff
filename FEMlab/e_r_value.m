function e_r = e_r_value(x)
    if(x >= 0 && x <= 1)
        e_r = 10;
    elseif (x > 1 && x <=2)
        e_r = 5;
    else
        e_r = 1; 
    end
end