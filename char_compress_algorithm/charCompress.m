function Y = charCompress(X)
%반복되는 숫자를 정렬하는 알고리즘
%1행 n열의 행렬을 압축한다.
    X = [X,0];
    %disp(X);
    
    x = "";
    temp_loop = 1;
    n = length(X);
    for i=1:1:n-1
        if X(i) == X(i+1)
            %반복되는 값의 처리
            temp_loop = temp_loop +1;
        else
            x = x + X(i) + temp_loop;
            
            temp_loop = 1;
        end
    end

    %아래의 코드에서 str to mat로 만든다.
    y = zeros(1,strlength(x));

    for i=1:1:strlength(x)
        y(i) = extract(x,i);
    end
    Y = y;
end