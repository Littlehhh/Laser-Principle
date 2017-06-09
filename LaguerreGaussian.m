function V = LaguerreGaussian(m,n)
% Laguerre Gaussian 圆形镜共焦腔拉盖尔高斯近似
% by Wang Hui
L = 1;
lamda = 500e-9;

a = 0.004;
dx = 0.00002;
xx = -a/2:dx:a/2;
yy = -a/2:dx:a/2;
[x,y] = meshgrid(xx,yy);
%直角坐标转极坐标
[phrase,R] = cart2pol(x,y);
w0 = sqrt(L*lamda/pi);
constA = sqrt(2)/w0;
constB = (w0^2);

RR = 2.*(R.^2)./constB;

% m = 3;
% n = 1;

V =  ((constA .* R).^m).* laguerreL(n,m,RR) .* ...
    exp(-(x.^2+y.^2)./(constB)) .* (cos(m.*phrase) + sin(m.*phrase) );