## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a matrix object and also can 
## cache its inverse

makeCacheMatrix <- function(x = matrix()) {
	## the inverse if of course initialize as NULL
	inverse <- NULL

	## the matrix is set
	setmatrix <- function(y) {
		x <<- y
		inverse <<- NULL
	}

	## get the value of the matrix
	get <- function() x
	## set the value of the inverse
	setinverse function(solve) inverse <<- solve
	## get the value of the inverse
	getinverse function() inverse
	list(setmatrix = setmatrix, get = get, setinverse = setinverse, getinverse = getinverse )

}


## Write a short comment describing this function
## this function computes the inverse of the matrix
## and in case the inverse has been already computed
## and the matrix is still the same, it retrieves the cached value for the inverse.
cacheSolve <- function(x, ...) {
        ## Returns a matrix that is the inverse of 'x'
		matrix <- x$getInverse()

		## Returns the inverse in case it is already set
		if( !is.null(matrix)) {
			message("getting cached inverse")
			return(matrix)
		}
		## gets the matrix form the object x
		data <- x$get

		## computes the inverse of the matrix
		matrix <- solve(data) %*% data
		## set the inverse of the matrix
		x$setInverse(matrix)

		## returns the matrix
		matrix
}
