#
## Shaft for torque
#
algebraic3d

# cable

solid cable = cylinder ( 0, 0, -6; 0, 0, 6; 0.5)
	and plane (0, 0, -5; 0, 0, -1)
	and plane (0, 0,  5; 0, 0, 1) -maxh=0.035;

# Cylinder

solid Range = cylinder ( 0, 0, -8; 0, 0, 8; 3)
	and plane (0, 0, -7; 0, 0, -1)
	and plane (0, 0, 7; 0, 0, 1)
	and not cable; 

  
tlo cable -col=[1,0,0];
tlo Range -col=[0,0,1] -transparent;
