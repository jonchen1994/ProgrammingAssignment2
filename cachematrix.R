## Put comments here that give an overall description of what your
## functions do

## This Actually is a list of functions that has 4 parts
## Setting the matrix input
## Getting the matrix input
## Setting the inverse (which is originally initialized to NULL)
## Getting the inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <- NULL
  }
  get <- function() x 
  setInverse <- function(inv) i <<- inv
  getInverse <- function() i
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Uses the list from before
## if the value for inverse does exist it is returned
## otherwise it is recalculated and set in the above list/function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)){
    message("Getting cash money")
    return(i)
  }
  data <- x$get()
  i <- solve(data,...)
  x$setInverse(i)
  i
}