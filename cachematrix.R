## Analog to the vector function I first made a function that simply gets and sets values of a
## matrix and gets and sets the inverse of that matrix. Then I made the function that inverses
## the matrix, but it first checks if the inverse isn't already cached.

## Here the value of the matrix get set, then it gets the value of the matrix, it computes the
## the value of the inverse matrix and it sets that value, last it gets the value of the inverse
## matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- inverse
    getinverse <- funtion () m
    list(set = set, get = get, 
         setinverse = setinverse
         getinverse = getinverse)

}


## This function first checks if the inverse matrix is already stored, if so it gets that inverse
## matrix. If not, it returns the inverse matrix of the "x".

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
}
