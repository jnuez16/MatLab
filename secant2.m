function answer=secant2(n, del, x, dx, e2, v0, r0)

k = 0;
x1 = x+dx;
g0 = gfunc(x, e2,v0,r0);
g1 = gfunc(x1, e2, v0, r0);

if (g1 > g0)
    x1 = x-dx;
end

while ((abs(dx)>del) && (k<n))
   d = bfunc(x1, e2, v0, r0)- bfunc(x, e2, v0, r0);
   if (d == 0)
       break;
   end
   dx = (-(x1-x))*bfunc(x1, e2, v0, r0)/d;
   x3 = x1+dx;
   g2 = gfunc(x3, e2, v0,r0);
   if (g2 > g1)
      x3 = x1-dx; 
   end
   x = x1;
   x1 = x3;
   g1 = g2;
   k = k+1;
end

if (k==n)
   fprintf('Convergence not found after %d iterations.', n); 
end

answer = x1;
return;