## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## created a matrix function makeCacheMatrix which can cache the inverse of a special matrix.
##makeCacheMatrix is a list with the functions: set, get, setInverse, getInverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){     ## set - sets the value of the matrix
    x <<- y
    m <<- NULL
    }
    get <- function () x    ## get - gets the value of the matrix
    setInverse <- function(Inverse) m <<- Inverse  ## setInverse - sets the value of the inverse of the matrix
    getInverse <- function() m                     ## getInverse - gets the value of the inverse matrix 
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
    
}


## Write a short comment describing this function
## cacheSolve returns the inverse of a matrix from makeCacheMatrix
cacheSolve <- function(x, ...) {
    m <- x$getInverse
    if(!is.null(m)){
    message("getting cached data") 
    return(m)            ## If matrix has not changed and inverse has already been calculated,
                        ##the inverse is returned from the cache
        }               
    data <- x$get
    m <- solve(data, ...)
    x$setInverse(m)
    m
        ## Return a matrix that is the inverse of 'x'
}
