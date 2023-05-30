exec('/home/2021.1.08.030/Downloads/metodoGaussSiedel.sce',-1)

A = [5 -1 3; 3 4 1; 3 3 6]
b = [5; 6; 0]
x = [0; 0; 0]
N = 3
tol = 0.05

gauss_seidel(A,b,x,tol,N)

