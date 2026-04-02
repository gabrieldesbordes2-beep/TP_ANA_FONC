function M = matriceMbord(P,E)
    nN= size(P,1);
    nE= size(E,1);
    S=[2 1;1 2]/6;
    M = sparse(nN, nN);
    for n = 1:nE;
        I= E(n, :);
        N= P(I, :);
        lambda = norm(N(2,:) - N(1,:));
        M(I,I) = M(I,I) + lambda * S;
    end 
end