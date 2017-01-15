close all

% Solve ODE by rk2 method using mid point formula
[y2m,t]=rk2_mid_point(f,t0,h,tf,y0);

% Solve ODE by rk2 method using mid point formula
[y2r,t]=rk2_ralstons(f,t0,h,tf,y0);

% Solve ODE by rk2 method using mid point formula
[y2h,t]=rk2_heuns(f,t0,h,tf,y0);

% Evalue ODE by rk4 method
[y4,t]=rk4(f,t0,h,tf,y0);

% Evalue the original function
% Second argument is zero becuase we are only considering explicit
% functions for the original function
y=f2(t,zeros(size(t,1),1));

% Plot everything
subplot(2,2,1);
hold on;
plot(t,y2m);
plot(t,y,'-.r');
legend('Numerical','Analytic');
disp('L2 Error in RK second order evalued using midpoint formula is');
double(sqrt(sum((y - y2m) .^ 2)))
title('RK second order mid point');


subplot(2,2,2);
hold on;
plot(t,y2r);
plot(t,y,'-.r');
legend('Numerical','Analytic');
disp('L2 Error in RK second order evalued using Ralstons formula is');
double(sqrt(sum((y - y2r) .^ 2)))
title('RK second order Ralstons');

subplot(2,2,3);
hold on;
plot(t,y2h);
plot(t,y,'-.r');
legend('Numerical','Analytic');
disp('L2 Error in RK second order evalued using Heuns formula is');
double(sqrt(sum((y - y2h) .^ 2)))
title('RK second order Heuns');

subplot(2,2,4);
hold on;
plot(t,y4);
plot(t,y,'-.r');
legend('Numerical','Analytic');
disp('L2 Error in RK fourth order is');
double(sqrt(sum((y - y4) .^ 2)))
title('RK fourth order');