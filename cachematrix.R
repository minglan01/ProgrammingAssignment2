## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverse_x <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function() x
    set_inverse <- function(inverse_xatrix) inverse_x <<- inverse_xatrix
    get_inverse <- function() inverse_x
    list(set=set, get=get,
         set_inverse=set_inverse,
         get_inverse=get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    inverse_x <- x$get_inverse()
    if(!is.null(inverse_x)){
        message("getting cached data")
        return(m)
    }
    
    data <- x$get()
    inverse_x <- solve(data,...)
    x$set_inverse(inverse_x)
    inverse_x
}
