## Put comments here that give an overall description of what your
## functions do
##two methods..

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


## This function creates a special "matrix" object that can cache its inverse.
## set a input x as a matrix
## inv is set to NULL
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  ## method get the matrix
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
    ## method get the inverse of matrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


#cachesolve function perform..

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
   # if a cached value exists return it
  if(!is.null(inv)){
    message("getting cached data") ## message is passed
          ## return the inverse 
    return(inv)
  }
  data <- x$get()
  inv <- solve(data) ##solved method 
  x$setInverse(inv)
  inv      
}

#calling function

Mymatrix <- matrix( 
  c(1:4), 
  nrow=2,         ##number rows=2      
  ncol=2,         # #number columns=2     
  byrow = TRUE )   #byrow is TRUE set

Mymatrix       ##print matrix


new<- makeCacheMatrix(Mymatrix) ##use the variable new 
cacheSolve(new)
