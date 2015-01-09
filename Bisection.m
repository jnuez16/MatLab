function Bisection()
x = 0;
del = 1*(10^(-6));
a = 1;
b = 2;
dx = b-a;
k = 0;

while(abs(dx)>del)
   x = (a+b)/2;
   if (func(a)*func(x))< 0
      b = x;
      dx = b-a;
   else
       a = x;
       dx = b-a;
   end
   k = k+1;
end
fprintf('Iteration number: %f\n', k);
fprintf('Root obtained: %f\n', x);
fprintf('Estimated error: %d\n', dx);
%answer = x;
return;