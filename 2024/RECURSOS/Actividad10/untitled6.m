x = sin(2*pi*(0:99)/100);
x(6) = 2;
x(20) = -2;

[y,i,xmedian,xsigma] = hampel(x,3,10);
n = 1:length(x);

figure
plot(n,x)
hold on
plot(n,xmedian-1*xsigma,n,xmedian+1*xsigma)
plot(find(i),x(i),'sk')
hold off
legend('Original signal','Lower limit','Upper limit','Outliers')