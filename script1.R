## Question 1 function for area of circle

area <- function(radius){
  area=pi*radius^2
  return (area) 
}
##testing function
area(3.4)

## will it work on a vector?

area(c(1,2,3))
##yes it will it returns individual areas

###Question 2
temps <- function(faren){
  celsius <- (faren-32)*(5/9)
  cat("Farenheit: value of" ,faren, "is equivalent to value" ,celsius, "centigrade \n")
  return(celsius)
}
temps(-44) ## at this temp they should be almost equal it is verified

##question 3

sum_stat <- function(vec){
  set.seed(100)
  mean_data <- mean(vec)
  median_data <- median(vec)
  range_data <- range(vec)
  cat("mean is:" ,mean_data, "Median is:",median_data,'range is:', range_data, "\n" )
  hist(vec, prob =T)
  lines(density(vec), col=4, lwd=2)
}
norm_data <- rnorm(100,35,15)
sum_stat(norm_data)

##Question 4
median <- function(vector){
  if ((length(vector))%%2==0){
    
    median= (vector[length(vector)/2]+vector[(length(vector)/2)+1])/2
  }
  else{
    median= vector[(length(vector)/2)+.5]
  }
  return(median)
}

## lets test with even and odd length vectors
even <- c(1,2,3,4,5,6)
median(even)

###odd
odd <- c(1,2,3,4,5)
median(odd)

### Question 4
ricker <- function(nzero, r, k){
    N_tplusone <- nzero*(exp(r*(1-(nzero/k))))
  
  
  return(N_tplusone)
}



ricker(10000, .01, 100)



