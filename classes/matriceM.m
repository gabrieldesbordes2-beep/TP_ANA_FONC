function M = matriceM(P,T)
    NN = size(P,1);
    NT = size(T,1);
    S = [2 1 1; 1 2 1; 1 1 2]/12;
    M = sparse(NN, NN);
    for n = 1:NT
        I= T(n,:);
        p1 = P(I(1), :);
        p2 = P(I(2), :);
        p3 = P(I(3), :);
        [s,d,q] = geo(p1,p2,p3);
        M(I,I)=M(I,I)+s*S;
    end
end