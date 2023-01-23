function main
    n = input("Enter the number of elements: ");
    b_matrix = zeros(n, n);
    % Dirichlet boundary condition
    l_matrix = zeros(n, 1);
    for i=1:n
        for j=1:n
            if abs(i-j)<=1
                % diagonal of B matrix
                b_matrix(i, j) = calculate_b(i, j, n);
            end
        end
        % L matrix
        l_matrix(i, 1) = calculate_l(i, n) - 2 * calculate_b(n, i, n);
    end
    disp(b_matrix);
    disp(l_matrix);
    % solution of linear equations
    result = linsolve(b_matrix, l_matrix);
    disp(result);

    
    h = 3/n;
    x = 0: h: 3;
    y = zeros(1, n+1);
    % plot of the result, for each x we increment y by result*base_function
    for i=0:length(x)-1
        for j=0:length(result)-1
            y(i+1) = y(i+1) + result(j+1) * base_function(j, n, x(i+1));
        end
    end
    plot(x, y);
    det(b_matrix)
end