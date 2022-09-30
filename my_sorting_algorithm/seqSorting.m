function [Y] = seqSorting(X,n)
    for N=n:-1:2
        for i=1:1:N-1
            if X(i)<X(i+1)
                temp = X(i);
                X(i) = X(i+1);
                X(i+1) = temp;
            end
                Y(i) = X(i);
                Y(i+1) = X(i+1);
        end %for
    end
end

%조금이라도 더 빠른 알고리즘
