## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## store the original matrix and inverse matrix to a object

## data members are x(original matrix) and inv_matrix
## member functions are : 
##	get_ori_matrix => return the original matrix
##	get_inv_matrix => return the inverse matrix
##	set            => set the original matrix to specified value 
##				and the inv_matrix to NULL
##	set_inv_matrix => set the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
	inv_matrix <- NULL
	get_ori_matrix <- function() x
	get_inv_matrix <- function() inv_matrix
	set <- function(y){
		x <<- y
		inv_matrix <<- NULL
	}
	set_inv_matrix <- function(inv_matrix){
		inv_matrix <<- inv_matrix
	}	
	list(get_ori_matrix = get_ori_matrix, get_inv_matrix = get_inv_matrix, set = set, set_inv_matrix = set_inv_matrix)

}


## Write a short comment describing this function
##calculate the inverse matrix and store in the object created
##by makeCacheMatrix

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
	inv_matrix <- x$get_inv_matrix()
	if(!is.null(inv_matrix)){
		message("getting cached data")
		return(inv_matrix)
	}
	ori_matrix <- x$get_ori_matrix()
	inv_matrix <- solve(ori_matrix)
	x$set_inv_matrix(inv_matrix)
	inv_matrix
}





