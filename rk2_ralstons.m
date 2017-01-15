function [y,t] = rk2_mid_point(f,t0,h,tf,y0)

t=t0:h:tf;

y = zeros(size(t));

y(1)=y0;

for i=1:(length(t)-1)
    k1=double(f(t(i),y(i)));
    k2=double(f(t(i)+3*h/4,y(i)+3*k1*h/4));
    y(i+1)=y(i)+(k1/3+2*k2/3)*h;
end

end