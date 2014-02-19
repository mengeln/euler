pro <- function(p, wins)(1 + 2*p)^wins * (1-p)^(1000 - wins)

findMin <- function(p)
  min(which(sapply(1:1000, function(x)pro(p, x)) >= 10^9))

minWins <- optimize(findMin, c(0, 1))$objective


