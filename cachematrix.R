## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Changed m to inv and setmean to setinverse for the function. 


makeCacheMatrix <- function(x = matrix(sample(1:100, 16), 4, 4)) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(solveMatrix) inv <<- solveMatrix
        getinverse <- function() inv 
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
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}
        ## Return a matrix that is the inverse of 'x'
        inv
}
