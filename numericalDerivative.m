function answer=numericalDerivative(dx, x)
answer = (func(x+dx)-func(x-dx))/(2*dx);
return;