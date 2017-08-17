## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## set the value of the matrix
## get the value os the matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInvs <- function(solve) m <<- solve
        getInvs <- function() m
        list(set = set,
             get = get,
             setInvs = setInvs,
             getInvs = getInvs)
}


## Write a short comment describing this function
## set the value of the inverse
## set the value of the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInvs()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setInvs(m)
        m
}

## the end ##
