## two functions together to generate an inverse matrix directly from cache or
## calculation.

## This function return a list containing functions to: 
## 1. set the value of the matrix, 2. get the value of the matrix;
## 3. set the value of the inverse matrix; 4. get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    inverse_x <- NULL
    set <- function(y){
        x <<- y
        inverse_x <<- NULL
    }
    get <- function() x
    set_inverse <- function(inverse_matrix) inverse_x <<- inverse_matrix
    get_inverse <- function() inverse_x
    list(set=set, get=get,
         set_inverse=set_inverse,
         get_inverse=get_inverse)
}


## this function calcuates the inverse matrix of the original matrix if it's 
## not caculated yet. Otherwise, it return the value from the cache.

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
