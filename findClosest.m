function [val,ind] = findClosest(x,desiredValue)
V1 = abs(x - desiredValue);
val = min(V1(:));
ind = find(V1==val);
val = x(ind);
end

