## This script creates a small simulated data set with 4 patients, 5 observations
## The goal is to create a sum and a mean for each patient


####--------------------------simulate a data set-----------------####

## create a matrix with normal dist values
random <- matrix(rnorm(1:20), 5, 4) 

## create column names
rnames <- c("patient1", "patient2", "patient3", "patient4") 

## append column names
colnames(random) <- rnames 

####--------------------------for loop method----------------------####

## create an empty vector
random.summed <- NULL

## loop index goes to 4 because there are 4 patients
## each iteration should transform one column
for(i in 1:4) {
        
        ## populate the empty vector with a sum at each element
        ## the sum is computed by adding all rows in the ith col
        random.summed[i] = sum(random[,i])     
}

## create an empty vector
random.means <- NULL

## create for loop over the columns
> for(i in 1:4) {
        
        ## populate vector with mean from each column
        ## mean is computed by applying mean function to all rows in ith column
        random.means[i] <- mean(random[,i]) 
}



