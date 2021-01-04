function [ myhandles ] = make_spaceship(trf_root, transparency)
% Makes a space-ship with the root transform as the given transform.
% The surfaces are drawn with the given transparency in [0,1]
% A vector of handles to all the surfaces is returned.

ship_dish_profile= 2*sin(linspace(0, pi, 15));
[Xc, Yc, Zc]= cylinder(ship_dish_profile);

% Top dish
trf_top_root= hgtransform('Parent', trf_root);
set(trf_top_root, 'Matrix', makehgtform('translate', [0, 0, -0.2]));
color_top= [1, 0, 1];
myhandles(1)= surface(Xc, Yc, Zc, 'Parent', trf_top_root, 'FaceColor', color_top, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_top, 'EdgeAlpha', transparency);

% Bottom dish
trf_bottom_root= hgtransform('Parent', trf_root);
set(trf_bottom_root, 'Matrix', makehgtform('translate', [0, 0, 0.2]));
color_bottom= [1, 1, 1];
myhandles(2)= surface(Xc, Yc, Zc, 'Parent', trf_bottom_root, 'FaceColor', color_bottom, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_bottom, 'EdgeAlpha', transparency);

% creates x, y, z coordinates of unit cylinder to draw left tail
[Xt, Yt, Zt]= cylinder([0.4 , 0.3 , 0.18]);

% Left tail
trf_tailleft_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [1,1,2.6]);
trf_Ry= makehgtform('yrotate', -pi/2);
trf_T= makehgtform('translate', [-1.5, 0.618, 0.5]);
% Interpret the order as BFT (left to right)
set(trf_tailleft_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_left= [0.8 0.4 0.1];
myhandles(3)= surface(Xt, Yt, Zt, 'Parent', trf_tailleft_root, 'FaceColor', color_tail_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_left, 'EdgeAlpha', transparency);

%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%

% creates x, y, z coordinates of unit cylinder to draw right tail
[Xt, Yt, Zt]= cylinder([0.4 , 0.3 , 0.18]);

% right tail
trf_tailleft_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [1,1,2.6]);
trf_Ry= makehgtform('yrotate', -pi/2);
trf_T= makehgtform('translate', [-1.5, -0.618, 0.5]);
% Interpret the order as BFT (left to right)
set(trf_tailleft_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_left= [0.8 0.4 0.1]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailleft_root, 'FaceColor', color_tail_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_left, 'EdgeAlpha', transparency);

%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%

% creates x, y, z coordinates of unit cylinder to draw left tail
[Xt, Yt, Zt]= cylinder([0.4 , 0.3 , 0.5]);

% inner Left tail
trf_tailleft_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.7,0.7,3]);
trf_Ry= makehgtform('yrotate', -pi/2);
trf_T= makehgtform('translate', [-1.5, 0.618, 0.5]);
% Interpret the order as BFT (left to right)
set(trf_tailleft_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_left= [1 1 1]; 
myhandles(3)= surface(Xt, Yt, Zt, 'Parent', trf_tailleft_root, 'FaceColor', color_tail_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_left, 'EdgeAlpha', transparency);

%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%

% creates x, y, z coordinates of unit cylinder to draw right tail
[Xt, Yt, Zt]= cylinder([0.4 , 0.3 , 0.5]);

% inner right tail
trf_tailleft_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.7,0.7,3]);
trf_Ry= makehgtform('yrotate', -pi/2);
trf_T= makehgtform('translate', [-1.5, -0.618, 0.5]);
% Interpret the order as BFT (left to right)
set(trf_tailleft_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_left= [1 1 1]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailleft_root, 'FaceColor', color_tail_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_left, 'EdgeAlpha', transparency);

%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%
% creates x, y, z coordinates of unit cylinder to draw right tail
[Xt, Yt, Zt]= cylinder([0.4 , 0.3 , 0]);

% node 1
trf_tailleft_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.3,0.3,2.5]);
trf_Rx= makehgtform('xrotate', (-pi/2)+0.66);
trf_Ry= makehgtform('yrotate', (-pi/2)-1.2);
trf_T= makehgtform('translate', [-0.5, -0.618, 0.5]);
% Interpret the order as BFT (left to right)
set(trf_tailleft_root, 'Matrix', trf_T*trf_Rx*trf_Ry*trf_scale);
color_tail_left= [0.8 0.4 0.1]; 
myhandles(5)= surface(Xt, Yt, Zt, 'Parent', trf_tailleft_root, 'FaceColor', color_tail_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_left, 'EdgeAlpha', transparency);


%%%%%%%%%%%%%%
%%%%%%%%%%%%%%
% creates x, y, z coordinates of unit cylinder to draw right tail
[Xt, Yt, Zt]= cylinder([0.4 , 0.3 , 0]);

% node 2
trf_tailleft_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.3,0.3,2.5]);
trf_Rx= makehgtform('xrotate', -((-pi/2)+0.66));
trf_Ry= makehgtform('yrotate', (-pi/2)-1.2);
trf_Rz= makehgtform('zrotate', pi/2);
trf_T= makehgtform('translate', [-0.5, 0.618, 0.5]);
% Interpret the order as BFT (left to right)
set(trf_tailleft_root, 'Matrix', trf_T*trf_Rx*trf_Ry*trf_Rz*trf_scale);
color_tail_left= [0.8 0.4 0.1]; 
myhandles(6)= surface(Xt, Yt, Zt, 'Parent', trf_tailleft_root, 'FaceColor', color_tail_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_left, 'EdgeAlpha', transparency);


%%%%%%%%%%%%%%
%%%%%%%%%%%%%%
% creates x, y, z coordinates of unit cylinder to draw right tail
[Xt, Yt, Zt]= cylinder([0.4 , 0.3 , 0]);

% node 3
trf_tailleft_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.3,0.3,2.5]);
trf_Rx= makehgtform('xrotate', (-pi/2)+0.66);
trf_Ry= makehgtform('yrotate', -((-pi/2)-1.2));
trf_T= makehgtform('translate', [0.5, -0.618, 0.5]);
% Interpret the order as BFT (left to right)
set(trf_tailleft_root, 'Matrix', trf_T*trf_Rx*trf_Ry*trf_scale);
color_tail_left= [0.8 0.4 0.1]; 
myhandles(5)= surface(Xt, Yt, Zt, 'Parent', trf_tailleft_root, 'FaceColor', color_tail_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_left, 'EdgeAlpha', transparency);


%%%%%%%%%%%%%%
%%%%%%%%%%%%%%
% creates x, y, z coordinates of unit cylinder to draw right tail
[Xt, Yt, Zt]= cylinder([0.4 , 0.3 , 0]);

% node 4
trf_tailleft_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.3,0.3,2.5]);
trf_Rx= makehgtform('xrotate', -((-pi/2)+0.66));
trf_Ry= makehgtform('yrotate', -((-pi/2)-1.2));
trf_Rz= makehgtform('zrotate', pi/2);
trf_T= makehgtform('translate', [0.5, 0.618, 0.5]);
% Interpret the order as BFT (left to right)
set(trf_tailleft_root, 'Matrix', trf_T*trf_Rx*trf_Ry*trf_Rz*trf_scale);
color_tail_left= [0.8 0.4 0.1]; 
myhandles(6)= surface(Xt, Yt, Zt, 'Parent', trf_tailleft_root, 'FaceColor', color_tail_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_left, 'EdgeAlpha', transparency);



end

