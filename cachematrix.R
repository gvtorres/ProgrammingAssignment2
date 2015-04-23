# This R file contains the functions corresponding to Program Assingment
# 02 from the R Programming course
# The maing goal is to learn about the <<- operator


# This function creates a special kind of matrix that can
# cache its inverse and call it in order to avoid unecessary
# computations

makeCacheMatrix <- function(x = matrix())
{
    i <- x$getInv()
    if(!is.null(i))
    {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setInv(i)
    i
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
