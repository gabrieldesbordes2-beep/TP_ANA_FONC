function [surf,diam,qual] = geo(p1,p2,p3)
    u=p2-p1;
    v=p3-p1;
    A=[u;v];
    L1=norm(p1-p2);
    L2=norm(p1-p3);
    L3=norm(p2-p3);
    surf = 0.5*abs(det(A));
    diam = max([L1,L2,L3]);
    qual=4/sqrt(3)*surf/(diam^2);
end