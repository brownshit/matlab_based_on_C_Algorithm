function Y = chardeCompress(X)
tic
%압축해제할데이터의 총 길이 가져오기
    arrlength = 0;
    
    %압축해줄 행렬의 크기를 가져온다.
    for p = 2:2:length(X)
        arrlength = arrlength + X(p);
        %disp(arrlength)
    end
    
    Z = zeros(1,arrlength);
    %disp(Z);
        %위의 코드 정상

    %만든 빈 행렬에 압축해제된 코드 우겨넣기

    data_mat = zeros(1,length(X)/2);
    num_mat= zeros(1,length(X)/2);
    %여기서는 값을 행렬에 넣는다.
    for m = 1:2:length(X)
        data_mat((m+1)/2) = X(m);
        num_mat((m+1)/2) = X(m+1);
    end
    %disp(data_mat);
    %disp(num_mat);

    %여기서는 위에서 만든 행렬의 값을 가져와서
    %새로운 행렬에 새로 넣는다 개수만큼..

    l = 1;
        %여기아래만수정하면 된다.
    for n = 1:1:length(num_mat)
        for t = 1:1:num_mat(n)
            Z(l) = data_mat(n);
        end
        l = l+1;
    end
    Y = Z;
    toc
end