#I tried using stringi's str_locate_all(), but the result came out incomplete (from the example, it returned 2 positions instead of 3)

s = 'GATATATGCATATACTT'
t = 'ATAT'

u = str_split(s, '')[[1]]
v = str_split(t, '')[[1]]

vector <- character() #initialize vector as char, c() in NULL

for(i in 1:length(u)){
  if(u[i] == v[1]){
    if(substr(s, start=i, stop=(i+length(v)-1)) == t){
      vector = append(vector, i)
    }
  }
}

paste( unlist(vector), collapse=' ')
