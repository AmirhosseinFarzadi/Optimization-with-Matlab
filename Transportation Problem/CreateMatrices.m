function out=CreateMatrices(model)

    n=model.n;
    m=model.m;
    a=model.a;
    b=model.b;
    c=model.c;

    f=reshape(c,[],1);
    
    Im=eye(m);
    A=[];
    for j=1:m
        A=[A repmat(Im(:,j),1,n)];
    end

    B=b;
    
    In=eye(n);
    Aeq=repmat(In,1,m);
    
    Beq=a;
    
    lb=zeros(size(f));
    
    ub=[];
    
    out.f=f;
    out.A=A;
    out.B=B;
    out.Aeq=Aeq;
    out.Beq=Beq;
    out.lb=lb;
    out.ub=ub;
    
end