function secondOrderDerivative(x, h, f, k)

%Constants
n = length(f);

%Arrays
y = zeros(1,n);
xl = zeros(1,k+1);
fl = zeros(1,k+1);
fr = zeros(1,k+1);


for i = 2:n-1
    y(i) = (f(i+1)-2*f(i)+f(i-1))/(h*h);
end

for i = 1:k+1
    xl(i) = h*i;
    fl(i) = y(i+1);
    fr(i) = y(n-i);
end

y(1) = AitkenMethod(0, xl, fl);
y(n) = AitkenMethod(0, xl, fr);


plot(x,y, '+');

return;