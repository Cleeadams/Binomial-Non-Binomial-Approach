% do the class share the same birthday

clc
clear


r = 365;
s=@(x) 1 / x;
n = 25;

for i = 1:n-1
    q = 1 - s(r);
    p(i) = q^(n-1);
    n = n-1;
    r = r - 1;
end

display(1-prod(p))

pl = 364 / 365;
p2 = pl;
for i = 1:23
    pl = pl * (p2 - i/365);
end

display(1-pl)


