## Put comments here that give an overall description of what your
## functions do

## creates a special matrix containing a function to set/get the matrix and set/get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <-NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get= get, setsolve = setsolve, getsolve = getsolve)
  
}


##Calculate the inverse of the special matrix and if the inverse has been calculated, get the value

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)){
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setsolve(m)
  m
  ## Return a matrix that is the inverse of 'x'
}
