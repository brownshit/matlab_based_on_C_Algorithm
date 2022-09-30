function Y = selecting_soring(X)
    Y = zeros(1,length(X));
    %disp(Y);
    r = length(X);
    K = X;

    for p = 1:1:r
        if(p == 1)
            m = 1;
        else
            m = 2;
        end

        %disp("number : "+p);
        %disp(K);
        K = K(m:end);
        %K = K(p:end);
        %disp(K);
        [j] = find(K == min(K));
        %disp("  index : " + j);

        if (K(1)~=K(j))
            temp = K(j);
            K(j) = K(1);
            K(1) = temp;
        end

        %disp(K);
        Y(p) = K(1);
        %disp(Y);

    end
    disp(X);
    disp(Y);
end
