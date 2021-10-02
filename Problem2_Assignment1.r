circ_y1=replicate(n=10000, runif(1,min=-1, max=1)) # Random number for y coordinate between -1 to 1

circ_x1=replicate(n=10000, runif(1,min=-1, max=1)) # Random number for x coordinate between -1 to 1

circ_x1_2= circ_x1^2 #squaring the x coordinate

circ_x1_2_double=as.double(circ_x1_2) #convert to double type

circ_y1_2= circ_y1^2 #squaring the y coordinate

circ_y1_2_double=as.double(circ_y1_2) #convert to double type

sum_circ_x1_2_y1_2= circ_x1_2_double+circ_y1_2_double
#sum of x1^2 and y1^2 gives the distance from the centre(0,0)

typeof(sum_circ_x1_2_y1_2)

vec_sum_circ_x1_2_y1_2=unlist(sum_circ_x1_2_y1_2)

typeof(vec_sum_circ_x1_2_y1_2)

iter=1
count_points_in_circle=0
while(iter<=10000){
    count_update=ifelse(vec_sum_circ_x1_2_y1_2[iter] <1 ,1,0)
    count_points_in_circle=count_points_in_circle+count_update
    iter=iter+1
    }


count_points_in_circle

simulated_pi=(4*count_points_in_circle)/10000

print(simulated_pi)

pi


