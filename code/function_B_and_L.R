source("function_e.R")
source("function_h.R")
source("gauss_legendre.R")

B <- function(n, i, j){
  
  a = max(0, h(n, i-1), h(n, j-1))
  b = min(h(n, i+1), h(n, j+1))
  
  return(
    -e(n, 0, i) * e(n, 0, j) + gauss_legendre(n, a, b, i, j)
  )
}

L <- function(n, i){
  return(-20 * e(n, 0, i))
}