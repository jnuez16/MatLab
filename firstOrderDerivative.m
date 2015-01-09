function firstOrderDerivative(x, h, f, k)

n = length(f);
y = zeros(1,n);
xl = zeros(1,k+1);
fl = zeros(1,k+1);
fr = zeros(1,k+1);

for i = 2:n-1
    y(i) = (f(i+1)-f(i-1))/(2*h);
end

for i = 2:n-1
   xl(i-1) = h*i;
   fl(i-1) = y(i);
   fr(i-1) = y(n+1-i);
end

%y(1) = AitkenMethod(0, xl,fl);
%y(n) = AitkenMethod(0, xl, fr);

%plot(x, y, '+');
return;
    