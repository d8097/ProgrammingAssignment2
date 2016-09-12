## This is not my work. In an attempt to learn more, I copied it from here:
## http://stackoverflow.com/questions/33738820/r-programming-cache-the-inverse-of-a-matrix

## x and inv are stored in the environment within which they are defined.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function() inv <<- solve(x)
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## This is not my work. In an attempt to learn more, I copied it from here:
## http://stackoverflow.com/questions/33738820/r-programming-cache-the-inverse-of-a-matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
cacheSolve <- makeCacheMatrix()
cacheSolve$set(matrix(1:4, 2))
cacheSolve$get()


funs$setInverse()
funs$getInverse()
