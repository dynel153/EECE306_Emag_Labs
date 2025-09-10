function [Ax, Ay, Az] = ccs2rcs(Arho, Aphi, Az_cyl, x, y, z)
% Convert cylindrical vector components (Arho, Aphi, Az) 
% at position (x,y,z) into rectangular components (Ax, Ay, Az).

    % Get azimuth angle from position
    [theta, r , z] = cart2sph(x, y, z);

    % Transformation
    Ax = Arho*cos(theta) - Aphi*sin(theta);
    Ay = Arho*sin(theta) + Aphi*cos(theta);
    Az = Az_cyl;