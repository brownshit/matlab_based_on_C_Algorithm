function Z = matrixMult(X,Y)
    i = size(X);
    j = size(Y);
    Z = zeros(i(1,1),j(1,2));
    disp(Z);
    if(i(1,2) == j(1,1))
        %여기서 행렬곱 실행
        for m = 1:1:i(1,1)
            for p = 1:1:j(1,2)
                for n = 1:1:i(1,2)
                    Z(m,p) = Z(m,p) + X(m,n).*Y(n,p);
                end
            end
        end
    else
        fprintf("multifly failed...\nplease check matrix form");
    end
end