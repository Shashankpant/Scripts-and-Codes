# Written by: Javier Baylon

# Date: 01/16/2014

# get frames to "stich" trajectories
# assumes trajectories are previously loaded
# representations must be turned within each molecule!
# show protein/lipids from 15 trajectory, first decreasing from frame 173 to 1, and then from 0 to 499!
	
	#take picture parameters

	source take_picture.tcl

	take_picture format "./snaps/image.%05d.tga"

	take_picture method TachyonInternal

	take_picture modulo 1

	#list of frames for each stuff. list are [start finish increase molid]


set numframe [molinfo top get numframes]

for {set f 0} {$f < $numframe} {incr f 1} {

		animate goto $f
		take_picture


	};#$foreach set


#exit
