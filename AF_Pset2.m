%% Ariana Freitag pset 2

%% Convolution

x=[0,-2,4,1,1];

h=[2,-1,2,3,-1];

y=conv(x,h,'same');

figure;

subplot(3,1,1);
stem(x, 'g*','LineWidth',2);
title('X[n]');
xlabel('time (s)');
xticklabels({'-2',' ','-1',' ','0', ' ', '1', ' ', '2'});

subplot(3,1,2);
stem(h,'r*','LineWidth',2);
title('H[n]');
xlabel('time (s)');
xticklabels({'-2',' ','-1',' ','0', ' ', '1', ' ', '2'});

subplot(3,1,3);
stem(y,'b*','LineWidth',2);
title('X[n]*H[n]');
xlabel('time (s)');
xticklabels({'-2',' ','-1',' ','0', ' ', '1', ' ', '2'});

