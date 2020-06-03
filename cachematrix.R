## Put comments here that give an overall description of what your
## functions do 
## the function is used to cache the value of inverse of matrix, x and inv are saved in the enviornment of 
##"set","get","setinverse" and "getinverse", i.e where they are defined.

## Write a short comment describing this function
##This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) { inv <- NULL
set <- function(y) {
  x <<- y
  inv <<- NULL
}
get <- function() x
setinverse <- function(solve) inv <<- solve
getinverse <- function() inv
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)

}


## Write a short comment describing this function
##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
##If the inverse has already been calculated,
##then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {inv <- x$getinverse()
if(!is.null(inv)) {
  message("getting cached data")
  return(inv)
}
data <- x$get()
inv <- solve(data, ...)
x$setinverse(inv)
inv
        ## Return a matrix that is the inverse of 'x'
}
