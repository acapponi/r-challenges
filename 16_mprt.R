library("Biostrings")
library(stringr)

ids = read.csv("rosalind_mprt.txt", header=FALSE)[[1]]
results = list()

for(i in ids){
  url = gsub(' ', '', paste('https://www.uniprot.org/uniprot/',i,'.fasta'))
  fastaFile <- readBStringSet(url)
  sequence = paste(fastaFile)

  
  ext = str_locate_all(sequence, regex("(?=(N[^P][ST][^P]))"))
  if(!isEmpty(ext)){
    res = do.call(rbind, ext)
    start = res[, 1]
    
    results = paste(results, i, sep="\n")
    results = paste(results, paste(unlist(start), collapse=' '), sep="\n")
  }
}

cat(results, sep = '\n')
