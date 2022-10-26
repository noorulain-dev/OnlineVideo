# ***********************************************************************
# Instruction: Complete the program below according to the comments given
# ***********************************************************************
require './input_functions'

# This program manages a series of 4 videos in an online course
class OnlineVideo

	attr_accessor :vtitle, :vduration

	def initialize(vttl, vdur)
		@vtitle = vttl
		@vduration=vdur
	end
end

def main
    a=0
    i=0
	# create a new array
	onlinevideo= Array.new
	# Loop starts here, repeat the following for all the 4 videos
while (i<4)
		title=read_string("Input video's title:")
		# get input from user
		
		# get input from user
		dur=read_integer("Input duration of this video (minutes):")
		
		# create a new video object from the input above
		a = OnlineVideo.new(title, dur)
		
		# add the new video object into the array
        onlinevideo << a
i+=1
	# Loop ends here
end 
index=0
    while index<4
	# call display() function
	display(onlinevideo[index])
	
	# call totalduration() function
	index+=1
	end
		
	a= totalduration(onlinevideo)
	# print total duration of the online course
	puts "The total duration of the video is #{a}"

end

# This function receives an array as parameter
def display(onlinevideo)
    
	#display title and duration of each video 
	puts "The title of the video is #{onlinevideo.vtitle}"
	puts "The duration of the video is #{onlinevideo.vduration}"
	

end

# This function receives an array as parameter 
# It calculates and returns the total duration of all the videos
def totalduration(onlinevideo)
sum=0
for i in 0..3
     sum += onlinevideo[i].vduration
	 end
	return sum
	
end
main