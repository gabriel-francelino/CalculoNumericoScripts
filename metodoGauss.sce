function[x] = GaussE(a,b,n)
    //Matriz triangular superior
    for k=1:1:n-1
        for i=k+1:1:n
            m=a(i,k)/a(k,k)
            a(i,k)=0
            for j=k+1:1:n
                a(i,j)=a(i,j)-m*a(k,j)
            end
            b(i)=b(i)-m*b(k)
        end
    end
    
    //Solução do sistema
    x=zeros(n,1)
    x(n)=b(n)/a(n,n)
    for k=n-1:-1:1
        s=0
        for j=k+1:1:n
            s=s+a(k,j)*x(j)
        end
        x(k)=(b(k)-s)/a(k,k)
    end
endfunction
