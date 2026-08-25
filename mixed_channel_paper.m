clear all;

% d = 2;
d1 = 2;
d2 = 2;
na = 2;% output result
nx = 12;% input measurement

%d = 3 nx = 3
% points = [...
% 0 0 1
% 1 0 0
% 0 -1 0
% 0 1 0
% 0 0 -1
% -1 0 0
% ];

%nx = 4
% c1 = 1;
% points = [
% c1 c1 c1
% c1 -c1 c1 
% c1 c1 -c1
% c1 -c1 -c1
% -c1 c1 c1
% -c1 -c1 c1
% -c1 -c1 -c1 
% -c1 c1 -c1
% ];
% c2 = (points(1,1)^2 + points(1,2)^2+points(1,3)^2)^0.5;
% points = points./c2;

% %nx = 6
% c1 = (1+5^0.5)./2;
% points = [
% 0 1 c1    
% 0 1 -c1
% 1 c1 0
% 1 -c1 0
% c1 0 1
% c1 0 -1
% 0 -1 -c1
% 0 -1 c1
% -1 -c1 0
% -1 c1 0
% -c1 0 -1
% -c1 0 1
% ];
% c2 = (points(1,1)^2 + points(1,2)^2+points(1,3)^2)^0.5;
% points = points./c2;

% nx = 10
% c1 = (1 + 2^0.5)./2;
% points = [
% 1 1 1
% 1 1 -1
% 1 -1 1
% 1 -1 -1
% 0 1 1/c1
% 0 1 -1/c1
% 1/c1 0 c1
% 1/c1 0 -c1
% c1 1/c1 0
% c1 -1/c1 0
% -1 -1 -1
% -1 -1 1
% -1 1 -1 
% -1 1 1
% 0 -1 -1/c1
% 0 -1 1/c1
% -1/c1 0 -c1
% -1/c1 0 c1
% -c1 1/c1 0
% -c1 -1/c1 0
% ];
% c2 = (points(1,1)^2 + points(1,2)^2+points(1,3)^2)^0.5;
% points = points./c2;


% %nx = 12
c1 = (1 + 2^0.5)./2;
points = [...
0.5 0.5 c1
0.5 0.5 -c1
0.5 -0.5 c1
0.5 -0.5 -c1
c1 0.5 0.5
c1 0.5 -0.5
c1 -0.5 0.5
c1 -0.5 -0.5
0.5 c1 0.5
0.5 c1 -0.5
0.5 -c1 0.5
0.5 -c1 -0.5
-0.5 0.5 c1
-0.5 0.5 -c1
-0.5 -0.5 c1
-0.5 -0.5 -c1
-c1 0.5 0.5
-c1 0.5 -0.5
-c1 -0.5 0.5
-c1 -0.5 -0.5
-0.5 c1 0.5
-0.5 c1 -0.5
-0.5 -c1 0.5 
-0.5 -c1 -0.5
];
c2 = (points(1,1)^2 + points(1,2)^2+points(1,3)^2)^0.5;
points = points./c2;

% % Icosidodecahedron
% % nx=15
% C0 = (1 + sqrt(5)) / 4;
% C1 = (3 + sqrt(5)) / 4;
% C2 = (1 + sqrt(5)) / 2;
% 
% points = [...
% 0.0 0.0 C2
% 0.0 0.0 -C2
% C2 0.0 0.0
% -C2 0.0 0.0
% 0.0 C2 0.0
% 0.0 -C2 0.0
% 0.5 C0 C1
% 0.5 C0 -C1
% 0.5 -C0 C1
% 0.5 -C0 -C1
% -0.5 C0 C1
% -0.5 C0 -C1
% -0.5 -C0 C1
% -0.5 -C0 -C1
% C1 0.5 C0
% C1 0.5 -C0
% C1 -0.5 C0
% C1 -0.5 -C0
% -C1 0.5 C0
% -C1 0.5 -C0
% -C1 -0.5 C0
% -C1 -0.5 -C0
% C0 C1 0.5
% C0 C1 -0.5
% C0 -C1 0.5
% C0 -C1 -0.5
% -C0 C1 0.5
% -C0 C1 -0.5
% -C0 -C1 0.5
% -C0 -C1 -0.5
% ];
% 
% c3 = (points(1,1)^2 + points(1,2)^2+points(1,3)^2)^0.5;
% points = points./c3;

% % Truncated Cuboctahedron
% % nx=24
% 
% C0 =  (1 + sqrt(2)) / 2
% C1 =  (1 + 2 * sqrt(2)) / 2
% 
% points = [...
% C0,  0.5,   C1
% C0,  0.5,  -C1
% C0, -0.5,   C1
% C0, -0.5,  -C1
% -C0,  0.5,   C1
% -C0,  0.5,  -C1
% -C0, -0.5,   C1
% -C0, -0.5,  -C1
% C1,   C0,  0.5
% C1,   C0, -0.5
% C1,  -C0,  0.5
% C1,  -C0, -0.5
% -C1,   C0,  0.5
% -C1,   C0, -0.5
% -C1,  -C0,  0.5
% -C1,  -C0, -0.5
% 0.5,   C1,   C0
% 0.5,   C1,  -C0
% 0.5,  -C1,   C0
% 0.5,  -C1,  -C0
% -0.5,   C1,   C0
% -0.5,   C1,  -C0
% -0.5,  -C1,   C0
% -0.5,  -C1,  -C0
% 0.5,   C0,   C1
% 0.5,   C0,  -C1
% 0.5,  -C0,   C1
% 0.5,  -C0,  -C1
% -0.5,   C0,   C1
% -0.5,   C0,  -C1
% -0.5,  -C0,   C1
% -0.5,  -C0,  -C1
% C1,  0.5,   C0
% C1,  0.5,  -C0
% C1, -0.5,   C0
% C1, -0.5,  -C0
% -C1,  0.5,   C0
% -C1,  0.5,  -C0
% -C1, -0.5,   C0
% -C1, -0.5,  -C0
% C0,   C1,  0.5
% C0,   C1, -0.5
% C0,  -C1,  0.5
% C0,  -C1, -0.5
% -C0,   C1,  0.5
% -C0,   C1, -0.5
% -C0,  -C1,  0.5
% -C0,  -C1, -0.5
% ];
% 
% c3 = (points(1,1)^2 + points(1,2)^2+points(1,3)^2)^0.5
% points = points./c3

rhoAB=rhoBell(1);
q=linspace(0,1,20);

% % arbitary pure state
% U = RandUGroup(d1)
% psi3 = U(:,1)
% psi = psi3 * psi3'
% eig(psi)
% trace(psi)
% 
% % % arbitary mix state
% U1 = RandUGroup(d1)
% U2 = RandUGroup(d1)
% psi1 = U1(:,1)
% psi2 = U2(:,1)
% prob = rand
% psi = prob * (psi1*psi1') + (1-prob) * (psi2*psi2')
% eig(psi)
% trace(psi)

psi = eye(2)./2

Result = [];
Result1 = [];
SOL = [];
% p = 1;

A = [1 ;0 ;0];%|0>
% A = kron(A,A);%|00>
B = [0 ;1 ;0];%|1>
% B = kron(B,B);%|11>
C = [0 ;0 ;1];
% C = kron(C,C);
D = [1;0];
EE = [0;1];

AA = kron(D,A);
BB = kron(EE,B);

for ii=1:20
%channel C
p(ii)=sdpvar(1,1,'hermitian','complex');
c_rhoAB1 = 0;
E_sum = 0;
% %1.bit flip channel, max p=0.5
E{1} = (p(ii).^0.5).*eye(2);
E{2} = ((1-p(ii)).^0.5).*pauli('x');

%2.phase flip channel, max p=0.5
% E{1} = (p(ii).^0.5).*eye(2);
% E{2} = ((1-p(ii)).^0.5).*pauli('z');

% %3.bit-phase flip channel, max p=0.5
% E{1} = (p(ii).^0.5).*eye(2);
% E{2} = ((1-p(ii)).^0.5).*pauli('y');

% 5.amplitude damping, max p=1
% CANNOT USE P^0.5,P^2=>NON-LINEAR 
% E{1} = [1 0;0 (1-p)^0.5];
% E{2} = [0 p^0.5;0 0];
for i=1:2
    c_rhoAB1 = c_rhoAB1 + kron(eye(2),E{i})*rhoAB*kron(eye(2),E{i}')
end
% c_rhoAB = [0.5 0 0 0.5.*((1-p)^0.5);
%            0 0 0 0;
%            0 0 0 0 ;
%            0.5.*((1-p)^0.5) 0 0 0.5.*(1-p)];
% 6.erasure channel
% c_rhoAB1 = p.*(1/2).*(AA*AA'+AA*BB'+BB*AA'+BB*BB') + (1-p).*kron(eye(2)/2,[0 0 0;0 0 0;0 0 1])

% r = trace(c_rhoAB)
% for i=1:2
%     E_sum = E_sum + E{i}'*E{i}
% end
% 4.depolarizing channel, max p=1
c_rhoAB2 = p(ii).*rhoAB + ((1-p(ii))./3).*(kron(eye(2),pauli('x'))*rhoAB*kron(eye(2),pauli('x'))...
            +kron(eye(2),pauli('y'))*rhoAB*kron(eye(2),pauli('y'))...
            +kron(eye(2),pauli('z'))*rhoAB*kron(eye(2),pauli('z')))
c_rhoAB3 = q(ii).*c_rhoAB1 + (1-q(ii)).*c_rhoAB2

%%%6.erasure channel
% c_rhoAB = p.*(1/3).*(A'*A+A'*B+A'*C+B'*A+B'*B+B'*C+C'*A+C'*B+C'*C) + (1-p).*kron(eye(4)/2,[0 0 0;0 0 0;0 0 1]);
% correct one
% c_rhoAB = p.*(1/2).*(AA*AA'+AA*BB'+BB*AA'+BB*BB') + (1-p).*kron(eye(2)/2,[0 0 0;0 0 0;0 0 1])
% ans = trace(c_rhoAB)
% c_rhoAB_TA = Tx(c_rhoAB,1,[2 3]);
% lambda = eig(c_rhoAB_TA)
% aa = lambda(lambda<0);
% neg = abs(sum(aa))



%V = sdpvar(1,1,'hermitian','complex');
% V = 1;
% c_rhoAB = V.*c_rhoAB+(1-V).*eye(d1.*d2)./(d1.*d2)
% ans = trace(c_rhoAB)
% c_rhoAB_TA = Tx(c_rhoAB,1,[2 2]);
% EIG = eig(c_rhoAB3)
% aa = lambda(lambda<0)
% neg(ii) = abs(sum(aa))
% for jj = 0:0.05:0.5
    % rhoAB = ((1-ii)/4).*(A+B+C+D)+(ii/4).*(E+F+G+H)

%     rhoAB = ii.*rhoAB + (1-ii).* (1/10).*eye(10);
% rhoAB = ((1-jj)/4).*(A+B+C+Dd)+(jj/4).*(E+Ff+G+H);


for iii = 0:nx-1
    
    MA{1,iii+1} = (1/2).*(eye(2)+points(iii+1,1).*pauli('x')+points(iii+1,2).*pauli('y')+points(iii+1,3).*pauli('z'));
    MA{2,iii+1} = (1/2).*(eye(2)-points(iii+1,1).*pauli('x')-points(iii+1,2).*pauli('y')-points(iii+1,3).*pauli('z'));
    
end

[R] = Enumeration(points)

OAB = sdpvar(d1.*d2,d1.*d2,'hermitian');

OB = TrX(OAB,1,[d1 d2]);

for a=0:na-1
for x=0:nx-1
    assemblage{a+1,x+1} = TrX(kron(MA{a+1,x+1},eye(d2))*OAB,1,[d1 d2]);
end
end

for lambda = 1:na^nx
    
s{lambda} = sdpvar(d2,d2,'hermitian','complex'); %\sigma_\lambda

end

D = detPax(nx,na);
for a=0:na-1
for x=0:nx-1
    
S{a+1,x+1} = 0*sdpvar(d2,d2);
  
for lambda = 1:na^nx

S{a+1,x+1} = S{a+1,x+1} + D(lambda,a+1,x+1)*s{lambda}; %S{a,x}=\sum_{\lambda} D_{\lambda}(a|x)\sigma{\lambda}

end

end
end


F = [];
F = [F, trace(OAB)==1];
%PVM
F = [F, c_rhoAB3 == R.*OAB + (1-R).*kron(eye(d1)./d1,OB)];
%POVM
% F = [F, c_rhoAB3 == (1./d1).*[R.*OAB + (1-R).*kron(eye(d1)./d1,OB)]+[(d1-1)./d1].*kron(psi,OB)];

for lambda = 1:na^nx
        
F = [F, s{lambda}>=0];   %\sigma_{\lambda}>=0

end


for a = 0:na-1
for x = 0:nx-1
        
  F = [F,  assemblage{a+1,x+1} == S{a+1,x+1}];    

end
end
% F = [F, 0.5<=p(ii)<=1];

sol = solvesdp(F, -p(ii));

val = double(p(ii))
info = sol.info

if strcmp(info, 'Infeasible problem (MOSEK)') %char
    val = -1;
end

Result = [Result, val]
SOL = [SOL, sol.info]


% sol = solvesdp(F, -V)
% fprintf('The value is %.2f\n', double(V))
% V = double(V)
% y2 = double(OAB)


end

plot(q(Result > 0), Result(Result > 0))  

hold on;


for ii=1:20
%channel C
pp(ii)=sdpvar(1,1,'hermitian','complex');
c_rhoAB1 = 0;
E_sum = 0;
% %1.bit flip channel, max p=0.5
E{1} = (pp(ii).^0.5).*eye(2);
E{2} = ((1-pp(ii)).^0.5).*pauli('x');

%2.phase flip channel, max p=0.5
% E{1} = (pp(ii).^0.5).*eye(2);
% E{2} = ((1-pp(ii)).^0.5).*pauli('z');

% %3.bit-phase flip channel, max p=0.5
% E{1} = (pp(ii).^0.5).*eye(2);
% E{2} = ((1-pp(ii)).^0.5).*pauli('y');

% 5.amplitude damping, max p=1
% CANNOT USE P^0.5,P^2=>NON-LINEAR 
% E{1} = [1 0;0 (1-p)^0.5];
% E{2} = [0 p^0.5;0 0];
for i=1:2
    c_rhoAB1 = c_rhoAB1 + kron(eye(2),E{i})*rhoAB*kron(eye(2),E{i}')
end
% c_rhoAB = [0.5 0 0 0.5.*((1-p)^0.5);
%            0 0 0 0;
%            0 0 0 0 ;
%            0.5.*((1-p)^0.5) 0 0 0.5.*(1-p)];
% 6.erasure channel
% c_rhoAB1 = p.*(1/2).*(AA*AA'+AA*BB'+BB*AA'+BB*BB') + (1-p).*kron(eye(2)/2,[0 0 0;0 0 0;0 0 1])

% r = trace(c_rhoAB)
% for i=1:2
%     E_sum = E_sum + E{i}'*E{i}
% end
% 4.depolarizing channel, max p=1
c_rhoAB2 = pp(ii).*rhoAB + ((1-pp(ii))./3).*(kron(eye(2),pauli('x'))*rhoAB*kron(eye(2),pauli('x'))...
            +kron(eye(2),pauli('y'))*rhoAB*kron(eye(2),pauli('y'))...
            +kron(eye(2),pauli('z'))*rhoAB*kron(eye(2),pauli('z')))
c_rhoAB3 = q(ii).*c_rhoAB1 + (1-q(ii)).*c_rhoAB2

%%%6.erasure channel
% c_rhoAB = p.*(1/3).*(A'*A+A'*B+A'*C+B'*A+B'*B+B'*C+C'*A+C'*B+C'*C) + (1-p).*kron(eye(4)/2,[0 0 0;0 0 0;0 0 1]);
% correct one
% c_rhoAB = p.*(1/2).*(AA*AA'+AA*BB'+BB*AA'+BB*BB') + (1-p).*kron(eye(2)/2,[0 0 0;0 0 0;0 0 1])
% ans = trace(c_rhoAB)
c_rhoAB_TA = Tx(c_rhoAB3,1,[2 2]);
% lambda = eig(c_rhoAB_TA)
% aa = lambda(lambda<0);
% neg = abs(sum(aa))

F = [];

F = [F, c_rhoAB_TA>=0];


sol = solvesdp(F, -pp(ii));

double(pp(ii))
sol.info

% % sol = solvesdp(F, -V)
% % fprintf('The value is %.2f\n', double(V))
% % V = double(V)
% % y2 = double(OAB)
% 
Result1 = [Result1,double(pp(ii))]
% SOL = [SOL,sol.info]

end

plot(q,double(pp))

xlabel('c')
ylabel('max w')
title('nx=12,PVM,c*bit flip channel+(1-c)*depolarizing channel');
% title('nx=12,POVM,c bit flip 1-c depolarizing');
legend('LHS model','separability')
% legend('LHS model')

function [R] = Enumeration(points)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%calculating r % given by the distance
%between the closest facet of the polytope generated by M and
%the origin

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 找到給定頂點時對應的polytope
[K,vol] = convhulln(points);
% 我們現在有六個點，編號為1到6，而第13行的K就是跟我們說哪三個點會形成這個polytope的其中一個平面
% trisurf(K,points(:,1),points(:,2),points(:,3));%,'FaceColor','cyan')
% Step 2: Convert the convex hull to hyperplane-representation
num_facets = size(K, 1); % number of the facets. 1 represents output
dimension = size(points, 2); % dimension of the space. 2 represents input
A = zeros(num_facets, dimension); % create zero elements matrix (1,2)= (row, column)
b = zeros(num_facets, 1);
for i = 1:num_facets
    facet_points = points(K(i,:),:); % call out the vertices forming the i-th facet
    normal = null(facet_points(2:end,:) - facet_points(1,:))'; % Normal to the facet %normal vector (orthonormal basis) for the null space of A.
    normal = normal / norm(normal); % Normalize the normal vector
    A(i, :) = normal;
    b(i) = abs(dot(normal, facet_points(1,:))); % the distance from the hyperplane to the origin
end
R = min(b);
end

