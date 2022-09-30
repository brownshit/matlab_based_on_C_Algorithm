function output = bubblesort(x)

for n= length(x):-1:2
    for m =1:n-1
        while x(m)>x(m+1)
            x([m,m+1]) = x([m+1,m]);
        end
    end

end
output=x;
