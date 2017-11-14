 
 ## the objective is manage a matrix  

makeCacheMatrix <- function( m = matrix() ) {
 
  ## work object
  x <- NULL
   ## Method to set the matrix
  set <- function( matrix ) {
    m <<- matrix
    x <<- NULL
  }
 
  ## Return matrix
  get <- function() {
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
 

 
## the objective is returns the inverse of a matrix  

cacheSolve <- function(object, ...) {
  ## Return a matrix that is the inverse of 'x'
  matrix <- object$getInv()
   
  ## if ok return matrix
  if( !is.null(matrix) ) {
    message("getting cached data")
    return(matrix)
  }
   

   
  ## Matrix calculation
  objMat <- object$get()
  new <- solve(objMat, ...)
  ## Modify result & return 
  object$setInv(new)
  new
}
