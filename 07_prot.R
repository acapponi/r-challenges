library(stringi)

s <- 'AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA'
t <- ''

names <- names(codon)


for(i in stri_sub(s,seq(1, stri_length(s), by=3), length = 3)){

  if(i %in% c('GCU','GCC','GCA','GCG')){
    t <- paste(t, 'A', sep='')
  }else if(i %in% c('UGU','UGC')){
    t <- paste(t, 'C', sep='')
  }else if(i %in% c('GAU','GAC')){
    t <- paste(t, 'D', sep='')
  }else if(i %in% c('GAA','GAG')){
    t <- paste(t, 'E', sep='')
  }else if(i %in% c('UUU','UUC')){
    t <- paste(t, 'F', sep='')
  }else if(i %in% c('GGU','GGC','GGA','GGG')){
    t <- paste(t, 'G', sep='')
  }else if(i %in% c('CAU','CAC')){
    t <- paste(t, 'H', sep='')
  }else if(i %in% c('AUU','AUC','AUA')){
    t <- paste(t, 'I', sep='')
  }else if(i %in% c('AAA','AAG')){
    t <- paste(t, 'K', sep='')
  }else if(i %in% c('UUA','UUG','CUU','CUC','CUA','CUG')){
    t <- paste(t, 'L', sep='')
  }else if(i %in% c('AUG')){
    t <- paste(t, 'M', sep='')
  }else if(i %in% c('AAU','AAC')){
    t <- paste(t, 'N', sep='')
  }else if(i %in% c('CCU','CCC','CCA','CCG')){
    t <- paste(t, 'P', sep='')
  }else if(i %in% c('CAA','CAG')){
    t <- paste(t, 'Q', sep='')
  }else if(i %in% c('CGU','CGC','CGA','CGG','AGA','AGG')){
    t <- paste(t, 'R', sep='')
  }else if(i %in% c('AGU','AGC','UCU','UCC','UCA','UCG')){
    t <- paste(t, 'S', sep='')
  }else if(i %in% c('ACU','ACC','ACA','ACG')){
    t <- paste(t, 'T', sep='')
  }else if(i %in% c('GUU','GUC','GUA','GUG')){
    t <- paste(t, 'V', sep='')
  }else if(i %in% c('UGG')){
    t <- paste(t, 'W', sep='')
  }else if(i %in% c('UAU','UAC')){
    t <- paste(t, 'Y', sep='')
  }else if(i %in% c('UAA','UAG','UGA')){
    t <- paste(t, '', sep='') #Stop
  }
  
}


t