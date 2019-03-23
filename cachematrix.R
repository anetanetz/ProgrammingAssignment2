## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x= matrix()) {
  #This function creates a special "matrix" object that can cache its inverse
  k <- NULL
  set <- function(y){
    x<<- y
    k <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) k <<- inverse
  getinv<- function() k
  list(set = set,
       get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  k<- x$getinv()
  data <- x$get()
  k <- solve(data, ...)
  x$setinv(k)
  k
}
