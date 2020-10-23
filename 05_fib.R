library(gmp) #for big numbers

rabbits <- function(n,k) {
  if(n <= 1) {
    return(n)
  }else if(n == 2) {
    return(k)
  }else if(n <= 4){
    return(rabbits(n-1,k) + rabbits(n-2,k))
  }else{
    return(rabbits(n-1,k) + rabbits(n-2,k)*k)
  }
}

n <- 5
k <- 3
as.bigz(rabbits(n,k))
