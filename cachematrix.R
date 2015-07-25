## This pair of functions cache the inverse of a matrix

## doing four things, set the matrix, get the matrix, set the
## inverse of the matrix, and get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                x <<- y
                i <<- MULL
        }
        get <- function() x
        setinverse <- function(solve) i <<- solve
        getinverse <- function() i
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Compute the inverse. If the inverse has already been calculated,
## then cacheSolve will return the inverse from cache instead of
## doing computation again.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
