library(stringr)
library(gmp)

n = 1000000
p = 'MA'

q = as.bigz(3) # for the Stop codon

for(i in strsplit(p,'')[[1]]){
  if(i == 'L' || i == 'R' || i == 'S'){
    mult = 6
  }else if(i == 'A' || i == 'G' || i == 'P' || i == 'T' || i == 'V'){
    mult = 4
  }else if(i == 'I'){
    mult = 3
  }else if(i == 'C' || i == 'D' || i == 'E'|| i == 'F' || i == 'H' || i == 'K' || i == 'N' || i == 'Q' || i == 'Y'){
    mult = 2
  }else if(i == 'M' || i == 'W'){
    mult = 1
  }
  
  q = q*mult
}

q%%n
