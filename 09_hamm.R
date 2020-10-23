s = 'GAGCCTACTAACGGGAT'
t = 'CATCGTAATGACGGCCT'

u = str_split(s, '')[[1]]
v = str_split(t, '')[[1]]

hamm = 0

for(i in 1:length(u)){
  if(u[i] != v[i]){
    hamm = hamm+1
  }
}

hamm