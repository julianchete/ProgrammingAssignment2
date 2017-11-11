## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function( m = matrix() ) {
 
  ## work object
  x <- NULL
   ## Method to set the matrix
  set <- function( matrix ) {
    m <<- matrix
    x <<- NULL
  }
 
  ## Return matrix
  getMat <- function() {
  m
  }
 
  ## Inverse  matrix
  setInv <- function(inverse) {
    x <<- inverse
  }
 
  ## Method to get the inverse of the matrix
  getInv <- function() {
    ## Return the inverse property
    x
  }
 
  ## Return a list of the methods
  list(set = set, get = get, getInv = getInv, setInv = setInv   )
}
 


## Write a short comment describing this function

cacheSolve <- function(object, ...) {
        ## Return a matrix that is the inverse of 'x'
 
  matrix <- object$getInverse()
   
  ## if ok return matrix
  if( !is.null(matrix) ) {
    message("getting cached data")
    return(matrix)
  }
   

   
  ## Matrix calculation
  objMat <- object$get()
  matrix <- solve(objMat) %*% objMat
  ## Modify result & return 
  object$setInverse(matrix)
  matrix
}
