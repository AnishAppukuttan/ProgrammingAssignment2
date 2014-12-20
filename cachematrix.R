## This function cretate the matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
mat<- NULL ## mat is the matrix where invesrse of the matrix 'x' is calculated
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

 
## This function calculates the inverse of the matrix x created by the makeCacheMatrix function
## and it also retrieves the inverse from the cache if the inverse is already calculated

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
