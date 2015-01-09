function answer=AitkenMethod(x, xi, fi)
% x is the x coordinate for the f value
% xi is the array of x coordinate
% fi is the array of f values

y = length(xi);

for i = 1:y-1
   for j = 1:y-i-1
       fi(j) = (x-xi(j))/(xi(i+j+1)-xi(j))*fi(j+1)+(x-xi(i+j+1))/(xi(j)-xi(i+j+1))*fi(j);
   end
end

answer = fi(1);

return;