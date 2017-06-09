function V = emithgaussian(m,n)
L = 1;
lamda = 500e-9;

a = 0.004;
dx = 0.00002;
xx = -a/2:dx:a/2-dx;
yy = -a/2:dx:a/2-dx;
[y,x] = meshgrid(xx,yy);

w0 = sqrt(L*lamda/pi);
constA = sqrt(2)/w0;
constB = (w0^2);
xc = x*constA;
yc = y*constA;

% m = 1;
% n = 2;

V =  hermiteH(m, xc).*hermiteH(n, yc).* exp(-(x.^2+y.^2)./(constB));
