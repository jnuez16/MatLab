function Bond(e2, v0, r0)

del = 10*(-6);
r = 2;
dr = 0.1;
n = 20;

r = secant2(n, del, r, dr, e2, v0, r0);

fprintf('The bond length is %d angstroms\n', r);

return;