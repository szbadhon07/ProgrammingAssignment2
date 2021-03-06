
## "makeCacheMatrix:" creates a special “matrix” object that can cache its inverse.
##set input "a" as a matrix.
##then set result value 'b' as a null.
## set the input 'x' as a matrix.
## set the solved value 's' as null.
## then changed every reference to mean to solve
makeCacheMatrix <- function(x = matrix() {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## i changed mean to solve and m to s.
cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
