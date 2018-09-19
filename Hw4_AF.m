%Ariana Freitag Assignment 4

%% Graham Schmidt

%Creating orthogonal set
vset = rand(500);
[oset]=grahamSchmidt(vset);
oset1=oset;

%Checking orthogonality
[ortho] = isOrthonormal(oset);

isortho=ortho; %1 for true 0 for false

%projection
vset2=rand(500,1);
pset = orthoProj(vset2,oset);


%% Gaussian 
x0= linspace(0, 2*pi,500); 
y = sin(x0);

g1 = 1/sqrt(2*pi) * exp(-(x0).^2); %u=0
g2 = 1/sqrt(2*pi) * exp(-(x0-0.5*pi).^2); %u=pi/2
g3 = 1/sqrt(2*pi) * exp(-(x0-pi).^2); %u = pi
g4 = 1/sqrt(2*pi) * exp(-(x0-1.5*pi).^2); %u = 3pi/2
g5 = 1/sqrt(2*pi) * exp(-(x0-2*pi).^2); %u= 2pi
vset= [g1',g2',g3',g4',g5'];

figure;
plot(x0, y);
hold on;
plot(x0, g1);
plot(x0, g2);
plot(x0, g3);
plot(x0, g4);
plot(x0, g5);
title('Sine and Gaussians');
xlabel('x');
ylabel('sin(x)');

oset = grahamSchmidt(vset);

vset2 = y';
pset2= orthoProj(vset2, oset);

figure;
subplot(2,1,1);
plot(x0, y, x0, pset2);
title('estimated sine with orthonormal projection');
xlabel('x');
ylabel('sin(x)');

subplot(2,1,2);
plot(x0,oset);
title('orthonormal basis functions from Gaussians')

