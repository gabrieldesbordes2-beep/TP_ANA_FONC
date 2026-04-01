function K = matriceK(P,T)
    NN = size(P,1);
    NT = size(T,1);
    S = [2 1 1; 1 2 1; 1 1 2]/12;
    K = sparse(NN, NN);
    for n = 1:NT
        I = T(n,:);
        p1 = P(I(1), :);
        p2 = P(I(2), :);
        p3 = P(I(3), :);
        [s,d,q] = geo(p1,p2,p3);
        Q=[0 0 d; (p2-p1) d; (p3-p1) d];
        R=inv(Q);
        A=R(1:2,:);
        K(I,I)=K(I,I)+ s*A'*A;
    end
end