% created a function called scss2rcs take input A shperical vector as well as x,y,z point
% Output is Ax,Ay,Az, unit vector
function[Ax,Ay,Az]= scs2rcs(Ar,Atheta,Aphi,x,y,z)

[phi,elva,r]= cart2sph(x,y,z);
% Convert the x,y,z point to spherical location, written in Phi, then
% elelvation from -pi/2 - +pi/2, and then R 

theta = pi/2 - elva;
% accout for elevation change from  -pi/2 - +pi/2 to [0-pi]

%getting vector units
Ax = Ar*sin(theta)*cos(phi)+Atheta*cos(theta)*cos(phi)-Aphi*sin(phi);

Ay = Ar*sin(theta)*sin(phi) + Atheta*cos(theta)*sin(phi) + Aphi*cos(phi);

Az = Ar*cos(theta) - Atheta*sin(theta);

% tested with [Ax, Ay, Az] = scs2rcs(5, 3, 4, 1, 0, 0)
%output was Ax=5 Ay=4 Az=-3
% used output to tranform to cylindrical
% cylindrical output equal Arho = 5 Aphi = 4 Az_out = -3 

% tested with [Ax, Ay, Az] = scs2rcs(5, 3, 4, 1, 0, 0)
%output was Ax=3 Ay=4 Az=5
% used output to tranform to cylindrical
%cylindrical output equal Arho = 3 Aphi = 4 Az_out = 5 

% tested with [Ax, Ay, Az] = scs2rcs(5, 3, 4, 3, 4, 0)
%output was Ax=-0.2 Ay=6.4 Az=-3
% used output to tranform to cylindrical
%cylindrical output equal Arho = 5 Aphi = 4 Az_out = -3 

