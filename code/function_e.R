source("function_h.R")

e <- function (n, x, i) {
  if (x >= h(n, i-1) && x <= h(n, i)){
    return (n/2 * x - i + 1)
  }
  
  if (x > h(n, i) && x <= h(n, i+1)){
    return (i + 1 - n/2 * x)
  }
  
  return (0)
}

e_derivative <- function (n, x, i) {
  if (x >= h(n, i-1) && x <= h(n, i)){
    return (n/2)
  }
  
  if (x > h(n, i) && x <= h(n, i+1)){
    return (-n/2)
  }
  
  return (0)
}