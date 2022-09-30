function main(x)
n = length(x);
disp(n);

y = seqSorting(x,n);
fprintf("Y = [");
for i=1:1:n-1
    fprintf('%.4f ', y(i));
end
fprintf("]");
end