## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Changed m to inv and setmean to set inverse for the function. 


makeCacheMatrix <- function(x = matrix(sample(1:100, 16), 4, 4)) {
        inv <- NULL
        
        # To set the matrix
        
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        # To get the matrix and retruns x 
        
        get <- function() 
                x
        
        # To set the inverse of the matrix
        
        setinverse <- function(solveMatrix) 
                inv <<- solveMatrix
        
        # To get the inverse of the matrix
        getinverse <- function() 
                inv 
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
# same here m to inv and mean to inverse 

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        # getting the matrix of the object
        data <- x$get()
        
        # Calculate the inverse of the matrix
        inv <- solve(data, ...)
        
        # set the inverse of the object and return
        x$setinverse(inv)
        inv
}
       
