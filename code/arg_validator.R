validate_n <- function () {
  args <- commandArgs(trailingOnly = TRUE)
  
  if (length(args) == 0) {
    print("No n provided")
    quit()
  }
  
  arg <- args[1]
  n <- as.numeric(arg)
  
  if (is.na(n) || n <= 2) {
    print("Wrong n value provided")
    quit()
  }
  
  return (n)
}