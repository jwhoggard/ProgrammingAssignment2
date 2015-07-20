## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # I think two variables:  x= mat and matinv
  matinv <- NULL
  setmatrix <- function(y) {
    x <<- y
    matinv <<- NULL
  }
  getmatrix <- function() { x }
  setinverse <- function(y) {matinv <<- y }
  getinverse <- function() { matinv }
  # Return the list:
  list(setmatrix = setmatrix, getmatrix = getmatrix, 
       setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matinv <- x$getinverse()
  if (!is.null(matinv)) {
    message("getting cached data")
    return(matinv)
  } 
  matinv <-solve(x$getmatrix())
  x$setinverse(matinv)
  matinv
}
