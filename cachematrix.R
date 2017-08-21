## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function - 2nd commit in GitHub

makeCacheMatrix <- function(m = matrix()) {
        invs <- NULL
        
        ## set is a function changes the matrix stored in the main function
        set <- function(y) {
                m <<- y
                invs <<- NULL
        }
        ## return the matrix m stored in the main function        
        get <- function() m
        
        ## store the inverse matrix 
        setinvs <- function(solve) invs <<- solve
        
        ## return the inverse matrix
        getinvs <- function() invs
        
        ## store the four functions in the function makeCasheMatrix
        ## note: use $ operator to access each function from the list
        list(set = set,
             get = get,
             setinvs = setinvs,
             getinvs = getinvs)
}

## Write a short comment describing this function

cacheSolve <- function(m, ...) {
        
        invs <- m$getinvs()
        ## if reverse matrix exists in memory, return a message and inverse matrix
        if(!is.null(invs)){
                message("getting cached inverse matrix")
                return(invs)
        }
        
        ## gest matrix m and caculate inverse matrix
        data <- m$get()
        invs <- solve(data, ...)
        m$setinvs(invs)
        invs
}

## the end ##