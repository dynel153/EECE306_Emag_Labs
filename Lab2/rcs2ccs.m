% created a function called rcs2ccs take input A vector as well as x,y,z point 
% Output is in cylindrical coordinate system unit vector

function [Arho, Aphi, Az_out] = rcs2ccs(Ax,Ay,Az,x,y,z)

% Convert the x,y,z point to Cylindrical location, igore all output but
% theta
[theta,r,z] = cart2pol(x,y,z); 

% Getting the Vector Unit for Arho
Arho = Ax*cos(theta)+ Ay*sin(theta);

% Getting the Vector Unit for Aphi
Aphi = -Ax*sin(theta)+ Ay*cos(theta);

% Getting the Vector Unit forAz
Az_out = Az;

% tested with [Arho, Aphi , Az_out] = rcs2ccs(2,3,0,4,0,0)
% output was Arho = 2 Aphi = 3 Az_out = 0

% tested with [Arho, Aphi , Az_out] = rcs2ccs(2,3,0,4,0,1)
% output was Arho = 2 Aphi = 3 Az_out = 0
% tested with [Arho, Aphi , Az_out] = rcs2ccs(0,0,0,3,5,9)
% output was Arho = 0 Aphi = 0 Az_out = 0
