function derive(func)

%Constants
n = 100;
k = 2;
h = pi/(2*n);
%handle = func;

%Arrays
x = zeros(1,n);
f = zeros(1,n);

for i = 1:n
   x(i) = h*i;
   f(i) = func(x(i)); 
end

firstOrderDerivative(x,h,f,k);
secondOrderDerivative(x,h,f,k);

return;