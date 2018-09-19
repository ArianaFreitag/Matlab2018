function [ortho] = isOrthonormal(oset)

mat = oset' * oset;
ortho =  sum(sum((mat - eye(length(mat)))));
ortho = ortho < 1e-8;
end


