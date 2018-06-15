#############################################################################
## Following code combination of two functions creates inverse of the matrics 
## Please note this is applicable only for invertable matrix
#############################################################################

#################################################################
#################################################################
## This function cache the inverse of the matrix
#################################################################
makeCacheMatrix = function(matx = matrix()) {
                  var1 = NULL
                  set  = function(matx1) {
                          matx <<- matx1
                          var1 <<- NULL
                  } 
                  get         = function() matx
                  setinverse  = function(inverse) var1  = inverse
                  getinverse  = function() var1
                  list(
                  set         = set,
                  get         = get,
                  setinverse  = setinverse,
                  getinverse  = getinverse)
                  
}
##################################################################


##################################################################
##################################################################
## This Function computes inverse of Matrix.
##################################################################
cacheSolve      = function(matx, ...) {
                  var1 = matx$getinverse()
                  if (!is.null(var1)) {
                      return(var1)
                  }
                  data = matx$get()
                  var1 = solve(data, ...)
                  matx$setinverse(var1)
                  var1
}
##################################################################
