function [add, sub] = add_sub(a,b)



if (length(A) ~= length(B))
    error('error');
end

add = 0;
sub = 0;
for i=1:length(a)
    add = add + a(i)*b(i);
    sub = sub -a(i)*b(i) ;
end
disp(add);
disp(sub);