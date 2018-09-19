function [oset] = grahamSchmidt(vset)

oset=zeros(size(vset)); %preallocate memory

for n= 1:size(vset,2) %loop through each vector column
    vn = vset(:,n); %this gives the vector in each column
    
    if n == 1 %special case for first vector
        phin= vn./norm(vn);
        oset(:,n) = phin;
    else %Fix thissss
        vn1= repmat(vn,1,size(oset,2));
        psin = vn -  sum( dot(oset,vn1,1).*oset ,2);%adds current phi plus all phi in oset
        phin= psin ./ norm(psin);
        
        oset(:,n) = phin; %sets current index to new phin 
    end 
    
    
end 

end

