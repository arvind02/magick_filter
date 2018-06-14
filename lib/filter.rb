module Filter
	EFFECT_MAP = {sketch: "-colorspace Gray -negate -edge 2 -negate", 
 		          gold: "+level-colors green,gold",  
 	              poster: "+dither  -posterize 6",
 	              bright: "-sigmoidal-contrast 4,0%",
 	              bw: "-type Grayscale",
 	              peach: "+dither -colors 2",
 	              navy: "+level-colors navy,lemonchiffon",
 	              firebrick: "+level-colors firebrick,yellow",
 	              contrast: "-sigmoidal-contrast 10,50%",
 	              poster2: "+dither -posterize 4",
 	              rough: "-dither FloydSteinberg -colors 8",
 	              sepia: "-sepia-tone 80%"}

 	FRAME_TYPE = {basic: "-mattecolor Tomato -frame 20x20+10+10", sunken: "-mattecolor Tomato -frame 20x20+0+20" }              

	WRITE_PATH = "/tmp" 

end



