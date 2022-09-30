function Y = Variance(X)%x는 행렬값이다.
    n = length(X);
    bar_x = mean(X);
    sum = 0;
    for i = 1:1:n
        X(i) = (X(i)-bar_x)*(X(i)-bar_x);
        sum = sum + X(i);
    end
    mul_v = sum./n;
    Y = mul_v;
end