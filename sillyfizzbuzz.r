fizzbuzz <- function(x){
  f <- cos(x%%3)
  b <- cos(x%%5)
  paste0(rep("Fizz", f), rep("Buzz", b),
         rep(x, f < 1 & b < 1 ))
}
mapply(fizzbuzz, 1:100)
