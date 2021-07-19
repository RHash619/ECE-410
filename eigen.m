
function [evalue, evector] = eigen(A)
format short
[v,~] =eig(A);
evalue = eig(A);
evector =v;
evector =round(evector);
for i = 1:length(evector)
    if evector(:,1)==-1
    evector(:,1) =1;
end
end
for i = 1:length(evalue)
    fprintf('for eign value = %.4f,\n', evalue(i));
    fprintf('Eign vector = \n');
    disp(evector(:,1));
end