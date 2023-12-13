
%transformation matrix full version
function [A] = trMatrixparametric(n)

syms A [4,4]
syms thetaa [1,6]
syms alphaa [1,6]
syms a [1,6]
syms d [1,6]

%  d(n)=0; a(n)=1; alphaa(n)=0;


A(1,1) = cos(thetaa(n)); A(1,2)=-sin(thetaa(n))*(cos(alphaa(n))); A(1,3)=sin(thetaa(n))*sin(alphaa(n)); A(1,4)=a(n)*cos(thetaa(n));

A(2,1) = (sin(thetaa(n))); A(2,2)=(cos(thetaa(n)))*(cos(alphaa(n))); A(2,3)=-cos(thetaa(n))*sin(alphaa(n)); A(2,4)=(sin(thetaa(n)))*(a(n));

A(3,1) =0; A(3,2) = (sin(alphaa(n))); A(3,3)=cos(alphaa(n)); A(3,4)=(cos(alphaa(n)))*(d(n));

A(4,1)=0; A(4,2)=0; A(4,3)=0; A(4,4)=1;

end

%Tsubs = double(subs(T, {thetaa1 thetaa2 }, {deg2rad(30) deg2rad(90)}))