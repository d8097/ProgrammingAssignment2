##makeCacheMatrix creates a special matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x ##returns the vector x stored in the main function
  setInverse <- function() inv <<- solve(x) ##changes the vector stored in the main function
  getInverse <- function() inv
  list(set = set,
      get = get,
      setInverse = setInverse, ##function similar to set
      getInverse = getInverse) ##function similar to get
}



cacheSolve <- function(x, ...) {
      m <- x$getinverse()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m
}
CachedMatrix <- makeCacheMatrix(a)
cacheSolve(CachedMatrix)

     [,1] [,2] [,3]
[1,]  0.2  0.0  0.0
[2,]  0.0  0.2  0.0
[3,]  0.0  0.0  0.2


