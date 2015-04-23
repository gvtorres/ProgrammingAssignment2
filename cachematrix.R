# This R file contains the functions corresponding to Program Assingment
# 02 from the R Programming course
# The maing goal is to learn about the <<- operator


# This function creates a special kind of matrix that can
# cache its inverse and call it in order to avoid unecessary
# computations

makeCacheMatrix <- function(x = matrix())
{
      i <- NULL
      set <- function(y)
      {
        x <<- y
        i <<- NULL
      }
      get <- function() x
      setInv <- function(solve) i <<- solve
      getInv <- function() i
      list(set = set, get = get,
           setInv = setInv, getInv = getInv)
}


## This function actually computes the matrix inverse

cacheSolve <- function(x,...)
{
      i <- x$getInv()
      if(!is.null(i))       # If the inverse matrix already exists
      {
        message("getting cached data")
        return(i)           # Call it
      }
      data <- x$get()
      i <- solve(data, ...)
      x$setInv(i)
      i    
}
