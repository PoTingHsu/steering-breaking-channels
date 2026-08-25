function y = rhoBell(m)
% rhoBell are the four kinds of maximally entangled Bell states
% rhoBell(m), m=1,2,3,4 returns the four kinds of Bell states

if m==1
    y = [1/2 0 0 1/2; 0 0 0 0; 0 0 0 0; 1/2 0 0 1/2];
elseif m==2
    y = [1/2 0 0 -1/2; 0 0 0 0; 0 0 0 0; -1/2 0 0 1/2];
elseif m==3
    y = [0 0 0 0; 0 1/2 1/2 0; 0 1/2 1/2 0; 0 0 0 0];
elseif m==4
    y = [0 0 0 0; 0 1/2 -1/2 0; 0 -1/2 1/2 0; 0 0 0 0];
else
    error('input value must be {1, 2, 3, 4}');
end

end

