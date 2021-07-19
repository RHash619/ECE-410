syms w x y z 
eqn1 = 2*w -2;
eqn2 = -1*w + 2*x - 3;
eqn3 = 3*w + x - y -2 ;
eqn4 = 4*w + x - 3*y + 3*z - 9; 

[A, B] = equationsToMatrix([eqn1, eqn2, eqn3, eqn4] , [w, x, y, z])

X = linsolve(A,B)


