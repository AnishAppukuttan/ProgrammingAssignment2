## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
mat<- NULL
        set <- function(y) {
                x <<- y
                mat <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) mat <<- solve
        getsolve <- function() mat
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
          mat <- x$getsolve()
if(!is.null(mat)) {
        message("getting cached data")
        return(mat)
}
data <- x$get()
mat <- solve(data, ...)
x$setsolve(mat)
mat
}
