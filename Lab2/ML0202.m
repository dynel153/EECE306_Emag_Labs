% M-file: ML0202
%
% This program converts a Cylindrical Corrdinate Ponit to a Cartesian Point 

%Variable:
% r: radical distance from Z-axis 
% thetad: angle with x-axis in degrees 
% z: z Location
%theta: angle in radians
% x,y,z: the cartesian cooridnate 
% cart: the cartesian cooridanate point 

clc % clear the Command Line
clear % clear the Variables 

%prompt for input
r = input('enter value for r: ');
thetad = input ("enter value for theta (in degree): ");
z = input ("enter the vlaue for z: ");

%perfrom the convertion
theta = (thetad*pi)/180; % change from degree into radians
x = r*cos(theta); % calulate the x coordinate 
y = r*sin(theta); % calculate the y coordinate
z = z;
cart = [x, y, z]; % create the Cartesian coordinate point

% for pol2cart must write (degree in radian, Radius, the Z)


% Practice Problem 1; [x,y,z] = pol2cart (pi,5,2)
% OutPut = x = -5 y = 6.1232e-16 z = 2 accurate to the script output 

% Pracrice Problem 2: [theta, r,z]= cart2pol(3,5,9)
% output; theta = 1.0304 r = 5.8310 z = 9