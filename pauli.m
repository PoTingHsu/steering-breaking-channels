function y = pauli(m)
% pauli are the standard Pauli matrices
% pauli(m), m=0,1,2,3, returns the standard Pauli matrices I, X, Y, Z

if m==0
    y = [1 0; 0 1];
elseif or(m==1,m=='x')
    y = [0 1; 1 0];
elseif or(m==2,m=='y')
    y = [0 -1i; 1i 0];
elseif or(m==3,m=='z')
    y = [1 0; 0 -1];
elseif or(m==4,m=='I')
    y = [1 0; 0 1];
elseif m=='H'
    y = (1/sqrt(2)).*[1 1; 1 -1];
else
    error('input value must be {0, 1, 2, 3, 4} or {x,y,z,H,I}');
end

end

