function firDerivative(step, xi, xf)

b = xi:step:xf;

f = zeros(1,length(b));

%for i = 2:length(b)
 %   f(i-1) = (sin(b(i-1)+(b(i)-b(i-1)))+sin(b(i-1)))/(b(i)-b(i-1));
%end
%f(length(b)) = AitkenMethod(xf+step, b,f);
%disp(f);


%for i = 2:length(b)
%    f(i-1) = (sin(b(i-1)-sin(b(i-1)-(b(i)-b(i-1)))))/(b(i)-b(i-1));
%end
%f(1) = AitkenMethod(xi-step, b,f);
%disp(f);

for i = 2:length(b)
    f(i-1) = (sin(b(i-1)+(b(i)-b(i-1)))-sin(b(i-1)-(b(i)-b(i-1))))/(2*(b(i)-b(i-1)));
end
f(1) = AitkenMethod(xi, b,f);
%f(length(b)) = AitkenMethod(xf, b,f);

plot(b,f,'+');

return;