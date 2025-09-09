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