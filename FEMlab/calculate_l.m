% Gaussian quadrature method
function l = calculate_l(v, n)
    h = 3/n;
    l = 5 * base_function(v, n, 0);
    factor_1 = h * (1/sqrt(3)) + v * h;
    factor_2 = h * (-1/sqrt(3)) + v * h;
    l = l - h * (1 * base_function(v, n, factor_1) / e_r_value(factor_1)  +...
                 1 * base_function(v, n, factor_2) / e_r_value(factor_2));
end