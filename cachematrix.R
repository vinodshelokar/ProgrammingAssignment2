###############################################################################################################################
## Following code combination of two functions creates inverse of the matrics 
## Please note this is applicable only for invertable matrix
## First function 'makeCacheMatrix' creates cashe of inverse Matrix 
## Second function 'cacheSolve' inverse the cached matrix
###############################################################################################################################

###############################################################################################################################
###############################################################################################################################
## This function cache the inverse of the matrix
###############################################################################################################################
makeCacheMatrix = function(matx = matrix()) {
                  var1 = NULL                             ## Initializing var1 to null
                  set  = function(matx1) {                ## Function to set value of metrix 
                          matx <<- matx1
                          var1 <<- NULL
                  } 
                  get         = function() matx           ## Function to get the value of the matrix
                  setinverse  = function(inverse)         ## Function to set value of inverse
                  var1        = inverse                   ## Assign inverse matrix to var1
                  getinverse  = function() var1           ## function to get cashe of inverse matrix
                  list(                                   ## Creating list of cashed matrix
                  set         = set,
                  get         = get,
                  setinverse  = setinverse,
                  getinverse  = getinverse)
                  
}
###############################################################################################################################


###############################################################################################################################
###############################################################################################################################
## This Function computes inverse of Matrix.
###############################################################################################################################
cacheSolve      = function(matx, ...) {
                  var1 = matx$getinverse()                  ## Getting cashed value of inverse (Generated in previous function)  
                  if (!is.null(var1)) {                     ## Check for not null value of inverse matrix
                      return(var1)
                  }
                  data = matx$get()                         ## Getting cashed value of get (Generated in previous function)  
                  var1 = solve(data, ...)                   ## Calculate inverse matrix
                  matx$setinverse(var1)                     ## Set inverse matric values 
                  var1                                      ## Return inverse matrix
}
################################################################################################################################
