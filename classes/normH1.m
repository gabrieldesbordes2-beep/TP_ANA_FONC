function val = normH1(u,M,K)
    val = sqrt(u'*(M+K)*u);
end