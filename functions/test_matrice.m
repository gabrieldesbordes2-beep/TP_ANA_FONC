function bool = test_matrice(mesh,A)
bool = false;
E1 = norm(A - mesh.K,inf)/norm(mesh.K,inf);
E2 = norm(A - mesh.M,inf)/norm(mesh.M,inf);
if min(E1,E2)<1e-12
    bool = true;
end
end
