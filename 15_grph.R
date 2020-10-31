library("Biostrings")
library(stringi)

fastaFile <- readDNAStringSet('rosalind_grph.txt')
seq_name = names(fastaFile)
sequence = paste(fastaFile)

for(i in (1:length(sequence))){
  suffix = stri_sub(sequence[i], from=(nchar(sequence[i])-2), to=nchar(sequence[i]))

  for(j in (1:length(sequence))){
    if(sequence[j] != sequence[i]){
      prefix = stri_sub(sequence[j], from=1, to=3)
      
      if(suffix == prefix){
        print( paste(seq_name[i], seq_name[j]))
      }
    }
  }
  
}
