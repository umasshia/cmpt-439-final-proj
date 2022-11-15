function res = trap(fx,x,n,h)
    s=fx(1);
    size = length(x);
    for i = 2 : n
        fxx = Lagrange(x, fx, x(1) + (i-1)*h);
        s = s + 2*fxx;
    end
    s = s + fx(size);
    res = h*s/2;
end