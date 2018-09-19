%Ariana Freitag ECE211 HW 1
%% Problem 5

%d
x0=linspace(0,1,1000);
f=exp(-2*pi*x0);
figure;
plot(x0,f);

hold on;
syms m
apx = (1 - exp(-2*pi))/(2*pi + 1j*2*pi*m)*exp(1j*m*2*pi*x0);
xapx = symsum(real(apx), m, -5, 5);
plot(x0, xapx)

maxim = max(imag(xapx));

%% e
figure;
n1=[-5:1:5];
cabs=abs((exp(-2*pi)-1)./(2*pi+1j*2*pi.*n1));
stem(n1,cabs);
xlabel('discrete time sampling');

