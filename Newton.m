function Newton(a, b)
del = 1*(10^(-6));
%a = 1;
%b = 2;
dx = b-a;
x = (a+b)/2;
k = 0;

while (abs(dx) > del)
   dx = func(x)/numericalDerivative(dx, x);
   x = x - dx;
   k = k+1;
end

%answer = x;
fprintf('Iteration number: %f\n', k);
fprintf('Root obtained: %f\n', x);
fprintf('Estimated error: %d\n', dx);
return;