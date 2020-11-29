## FUNCTION 1

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL

## Sets the matrix
        set <- function(matrix) {
                x <<- matrix
                i <<- NULL
  }

## Gets the matrix
        get <- function() {
		x
  }

## Sets inverse of matrix
        setinverse <- function(inverse) {
		i <<- inverse
  }

## Gets inverse of matrix
        getinverse <- function() {
		i
  }

        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## FUNCTION 2

cacheSolve <- function(x, ...) {

## Returning the inverse of matrix
        i <- x$getinverse()

        if (!is.null(i)) {
                 message("getting cached data")
                 return(i)
        }

## Gets matrix
        data <- x$get()

## Calculates inverse
        i <- solve(data, ...)

## Setting inverse
        x$setinverse(i)

        i
}
