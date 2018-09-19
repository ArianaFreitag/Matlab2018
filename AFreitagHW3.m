%Ariana Freitag ECE-210-A Assignment 3

%%

%Lunar Eclipse

A=ones(100,100);
B=zeros(100,100);

Z=1:100;
Z1= Z.';
Z2=1:100;

Zm=repmat(Z1,1,100); %columns
Zn=repmat(Z2,100,1); %rows

A=sqrt((Zm-50).^2 + (Zn-50).^2);
A=A<20;

B=sqrt((Zm-40).^2 + (Zn-40).^2);
B=B<20;

%Visualization
figure;
imshow(A);
figure;
imshow(B);
figure;
imshow(A&B);
figure;
imshow(A|B);
figure;
imshow(~(A&B));
figure;
imshow(~(A|B));

%%
%Fun with Find
x = sin(linspace(0,5,100)) +1;
desiredValue=1.5;
[val, ind] = findClosest(x, desiredValue);

%%
%Syncing ship
points=linspace(-2*pi, 2*pi, 10001);
fcn = sinc(points);
figure;
plot(points,fcn);
hold on;
[xroots] = criticalPoint(fcn); %gives location of the indices of the xroots
zeros = xroots;
yroot = 1;

der=diff(fcn)./diff(points); %derivative
derpoints = points(2:end);

[xroots] = criticalPoint(der); %gives index location of the indices of max and mins
maxmin = xroots;

%I don't know how to graph these but at least i have the indices 

hold off;

