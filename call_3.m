% Define function and its find its derivative
syms x y

% Change this to any function you want (it must be function of x and
% y both)
f2 = symfun(2*exp(-3*x), [x y]);
f = diff(f2,x);

% You can change step values 
h=0.6;
t0=0;
tf=10;
y0=f2(t0,0);

evalute_difference
