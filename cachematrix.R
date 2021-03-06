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
  setinverse<-function(inverse) k <<- inverse
  getinverse<- function() k
  list(set = set,
       get = get,
       setinverse=setinverse,
       getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  k<-x$getinverse()
  
  if(!is.null(k)){
    message("getting cached data")
    return(k)
  }
 
  data <- x$get()
  k<-solve(data, ...)
  x$setinverse(k)
  k
}
