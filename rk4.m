function [y,t] = rk2(f,t0,h,tf,y0)

t=t0:h:tf;

y = zeros(size(t));

y(1)=y0;

for i=1:(length(t)-1)
    k1=double(f(t(i),y(i)));
    k2=double(f(t(i)+h/2,y(i)+k1*h/2));
    k3=double(f(t(i)+h/2,y(i)+k2*h/2));
    k4=double(f(t(i)+h,y(i)+k3*h));
    
    y(i+1)=y(i)+h*(k1+2*k2+2*k3+k4)/6;
end

end