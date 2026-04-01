function [outputArg1,outputArg2] = matriceMbord(P,E)
    nN= size(P,1)
    nE= size(E,1)
    S=[2 1,1 2]/6
    M = sparse(NN, NN);
    for n = 1:nE
        I= Edges(n, :)
        N= Nodes(I, :)
        lambda= size(I,1)
        M(I, I) = M(I, I) + lambda*S
    end 
    return M
end