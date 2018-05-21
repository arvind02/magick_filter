module Filter
	EFFECT_MAP = {sketch: "-colorspace Gray -negate -edge 2 -negate", 
 		          gold: "+level-colors green,gold",  
 	              poster: "+dither  -posterize 6",
 	              bright: "-sigmoidal-contrast 4,0%",
 	              bw: "-type Grayscale"}

	WRITE_PATH = "/tmp" 	
end