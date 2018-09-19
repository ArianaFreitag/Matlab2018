function [pset] = orthoProj(vset2, oset)

vn2= repmat(vset2,1,size(oset,2));
pset = sum(dot(oset,vn2,1).*oset ,2);

end

