##Q: 1 makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.


## "makeCacheMatrix:" creates a special “matrix” object that can cache its inverse.
##set input "a" as a matrix.
##then set result value "b" as a null.

makeCacheMatrix <- function(a = matrix()) {
  b <- NULL
  set <- function(c){
    a <<- c
    b <<- NULL
  }
  get <- function() a
  setmean <- function(mean) b <<- mean
  getmean <- function() b
  list(set = set, get = get, setmean = setmean, getmean = getmean)
}

##Q: 2 cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.


  ## Return a matrix that is the mean of 'a'
cachemean <- function(a, ...) {
  b <- a$getmean()
  if(!is.null(b)){
    message("getting cached data")
    return(b)
  }
  data <- a$get()
  b <- mean(data)
  a$setmean(b)
  b      
}
