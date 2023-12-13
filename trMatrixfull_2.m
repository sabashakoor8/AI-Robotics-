%transformation matrix full version
function [A] = trMatrixfull(n,DH)

syms A [4,4]
syms thetaa [1,6]
syms alphaa [1,6]
syms a [1,6]
syms d [1,6]

d(n)=DH(n,2); a(n)=DH(n,3); alphaa(n)=DH(n,4);


A(1,1) = cos(thetaa(n)); A(1,2)=-sin(thetaa(n))*(cos(alphaa(n))); A(1,3)=sin(thetaa(n))*sin(alphaa(n)); A(1,4)=a(n)*cos(thetaa(n));

A(2,1) = (sin(thetaa(n))); A(2,2)=(cos(thetaa(n)))*(cos(alphaa(n))); A(2,3)=-cos(thetaa(n))*sin(alphaa(n)); A(2,4)=(sin(thetaa(n)))*(a(n));

A(3,1) =0; A(3,2) = (sin(alphaa(n))); A(3,3)=cos(alphaa(n)); A(3,4)=(cos(alphaa(n)))*(d(n));

A(4,1)=0; A(4,2)=0; A(4,3)=0; A(4,4)=1;

end



% note that this function returns A for every joint by calling:

% For Exercise 1 DH is

% dh =

%    45     0     1     1
%    45     0     1     0

% For Excercise 2, the dh matrix is:
% dh =
% 
%     45     1     1     0
%     0     1     1     0
%     0     1     1     0
%     45     1     1     0
%     45     1     1     0
%     45     1     1     0

% For Excercise 1, generate only the first two A1, and multiply them, and
% for the second excercise generate all

% A11 = trMatrixfull(1, dh)
% A11_ = double(subs(A11, {'thetaa1'}, {45})
% A12 = trMatrixfull(2, dh)
% A12_ = double(subs(A12, {'thetaa2'}, {45})
% A13 = trMatrixfull(3, dh)
% A13_ = double(subs(A13, {'thetaa3'}, {45})
% A14 = trMatrixfull(4, dh)
% A14_ = double(subs(A14, {'thetaa4'}, {45})
% A15 = trMatrixfull(5, dh)
% A15_ = double(subs(A15, {'thetaa5'}, {45})
% A16 = trMatrixfull(6, dh)
% A16_ = double(subs(A16, {'thetaa6'}, {45})


% then compute the complete transformation:
% T1_ = A11_ * A12_* A13_* A14_* A15_* A16_




% compare this to the manual method, such as for Excercise 1:

% A1 = trot2 (theta1)
% A2 = trot2 (theta2)
% T = A1 * A2

% For excercise 2:

% A1 = trot2 (theta1)
% A2 = transl2 (1)
% A3 = transl2 (1)
% A4 = trot2 (theta4)
% A5 = trot2 (theta5)
% A6 = trot2 (theta6)
% T1 = A1 * A2 * A3 * A4 * A5 * A6
