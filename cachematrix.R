## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     inv <- NULL    #initializing the inv
     set <- function(y) {     #set function to set to environment and reset respectively
          x <<- y
          inv <<- NULL
     }
     get <- function() x      #returns the value of matrix
     setInv <- function(solveMatrix) inv <<- solveMatrix    #assign inv to parent environment
     getInv <- function() inv      #get inv value
     list(set = set, get = get, setInv = setInv, getInv = getInv)     #to refer and call using operator
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     inv <- x$getInv()   #get inv value from cache
     if(!is.null(inv)){       #check if value exists in cache or not
          message("Getting cached data")     
          return(Inv)    #return cache value if matrix unchanged
     }
     data <- x$get()     #get matrix
     inv <- solve(data)       #to find the inverse of matrix
     x$setInv(inv)       #set inverse value to cache   
     inv        #inverse value of matrix
}
