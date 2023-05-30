function[P]=lagrange(X,Y)
    n=length(X);
    x=poly(0,"x");P=0;
    for i=1:n, L=1;
        for j=[1:i-1,i+1:n] L=L*(x-X(j))/(X(i)-X(j));
        end
        P=P+L*Y(i);
    end
endfunction
function[P]=newton(X,Y)
    n=length(X);
    for j=2:n,
    for i=1:n-j+1, Y(i,j)=(Y(i+1,j-1)-Y(i,j-1))/(X(i+j-1)-X(i));end,end
    x=poly(0,"x");
    P=Y(1,n);
    for i=2:n, P=P*(x-X(i))+Y(i,n-i+1);end
endfunction

function[P]=f(xn)
    P=25.3605*xn^2 -46.70925*xn^3 +23.34875*xn^4
endfunction