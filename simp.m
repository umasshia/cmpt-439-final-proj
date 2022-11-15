function res = simp(fx,x,n,h)
    s=fx(1);
    size = length(x);
    for k = 1 : (n/2)-1
        fxx = Lagrange(x, fx, (x(1) + (2*k)*h));
        %disp(fxx);
        s = s + 2*fxx;
    end
    for k = 1 : n/2
        fxx = Lagrange(x, fx, (x(1) + ((2*k-1)*h)));
        %disp(fxx);
        s = s + 4*fxx;
    end
    s = s + fx(size);
    res = h/3 * s;
end