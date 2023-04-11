% function s=gini(data,p)
% 
% A sparsity measure, where data is a vector, p=2 by default, that is, the
% Gini Index is calculated using the square of the absolute value of each
% sample.
% 
%  see Hurley, N.; Rickard, S., "Comparing Measures of Sparsity,"
%  Information Theory, IEEE Transactions on , vol.55, no.10, pp.4723-4741,
%  Oct. 2009
% URL:
% http://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=5238742&isnumber=5238716
%
%    NH 05/11/2009

function s=gini(data)

if nargin == 1
    p=1;
end
data = abs(data(:)).^p;
N=length(data);
data = sort(data); 
x=(0:N)'/N;
y=[0 ;cumsum(data)]/sum(data);
a=sum(y(1:end-1)+y(2:end))/(2*N);
s=(1-2*a);

% % to plot the Lorenz curve uncomment the folllowing line
% plot(x,y)

