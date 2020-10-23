library("Biostrings")
library(stringr)

fastaFile <- readDNAStringSet('rosalind_gc.txt')
seq_name = names(fastaFile)
sequence = paste(fastaFile)
#df <- data.frame(seq_name, sequence)

r <- list('tag'='', 'perc'=0)

for(i in (1:length(sequence))){
  gc <- 0

  for(j in str_split(sequence[i],'')[[1]]){
    if(j == 'G' || j == 'C'){
      gc <- gc+1;
    }
  }
 
  perc = gc*100/length(str_split(sequence[i],'')[[1]])

  if(r$perc < perc){
    r$perc <- perc
    r$tag <- seq_name[i]
  }
}

paste( unlist(r), collapse=' ')

