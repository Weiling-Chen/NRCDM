function s=hoyer(data)
data=data(:);
N=length(data);
s=(N^(1/2)-(sum(abs(data)))/((sum(data.^2))^(1/2)))*(N^(1/2)-1)^(-1);
