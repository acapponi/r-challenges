library(gmp)

n=6
m=3

r = as.bigz(c(1))
aux = 0

for(x in 1:(n-1)){
  if(x <= 1){
    aux = 1
  }else if(x < m){
    aux = rev(r)[1] + rev(r)[2]
  }else if(x == m){
    aux = rev(r)[1] + rev(r)[2] - 1
  }else{
    aux = rev(r)[1] + rev(r)[2] - rev(r)[m+1]
  }

  r = append(r, as.bigz(aux))
}

rev(r)[1]

