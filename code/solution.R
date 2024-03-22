source("function_B_and_L.R")

solution <- function (n) {
  
  matrix_B <- matrix(0, nrow=n, ncol=n)

  for (i in 1:n){
    for (j in 1:n){
      matrix_B[i,j] <- B(n, j-1, i-1)
    }
  }
  
  matrix_L <- matrix(0, nrow=n, ncol=1)
  for (i in 1:n) {
    matrix_L[i, 1] <- L(n, i-1)
  }
  
  matrix_solve = solve.default(matrix_B, matrix_L)
  
  u_x <- function(x){
    u_value = 0
    
    for (i in 1:n){
      u_value = u_value + matrix_solve[i]*e(n, x, i-1)
    }
    
    return(3 * x/2 + u_value)
  }
  
  return (u_x)
}