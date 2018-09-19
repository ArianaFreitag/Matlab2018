function [xroots] = criticalPoint(fcn)
fcn1 = fcn >= 0;
fcn2 = circshift(fcn1, [0,1]);
fcn2(1)=0;

fcn3 = fcn1-fcn2;
fcn4 = fcn2 - fcn1;
xroot1=find(fcn3==-1);
xroot2=find(fcn4==-1);
xroot2=xroot2(2:end);

xroots=horzcat(xroot1,xroot2);
end

