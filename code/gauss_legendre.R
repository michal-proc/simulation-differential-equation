gauss_legendre <- function(n, a, b, i, j){
  
  integral <- function(n, a, b, i, j){
    return (e_derivative(n, (b-a)/2*(1/sqrt(3)) + (b+a)/2, i) * e_derivative(n, (b-a)/2*(1/sqrt(3)) + (b+a)/2, j)
            + e_derivative(n, (b-a)/2*(-1/sqrt(3)) + (b+a)/2, i) * e_derivative(n, (b-a)/2*(-1/sqrt(3)) + (b+a)/2, j))
  }
  
  return ((b-a)/2 * integral(n, a, b, i, j))
}