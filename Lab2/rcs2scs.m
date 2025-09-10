% created a function called rcs2scs take input A vector as well as x,y,z point 
% Output is in spherical coordinate system unit vector
function [Ar, Atheta, Aphi ] = rcs2scs(Ax,Ay,Az,x,y,z)

[phi,elva,r]= cart2sph(x,y,z);
% Convert the x,y,z point to spherical location, written in Phi, then
% elelvation from -pi/2 - +pi/2, and then R 

theta = pi/2 - elva;
% accout for elevation change from  -pi/2 - +pi/2 to [0-pi]

%getting vector units 
Ar = Ax*sin(theta)*cos(phi)+Ay*sin(theta)*sin(phi)+ Az*cos(theta);

Atheta = Ax*cos(theta)*cos(phi)+Ay*cos(theta)*sin(phi)-Az*sin(theta);

Aphi = -Ax*sin(phi) + Ay*cos(phi);

% tested with [Ar, Atheta , Aphi] = rcs2ccs(2,3,0,4,0,0)
% output was Ar = 2 Atheta = 1.2246e-16 Aphi = 3

% tested with [Arho, Atheta , Aphi] = rcs2ccs(2,3,0,4,0,1)
% output was Ar = 1.9403 Atheta =  0.4851 Aphit = 3