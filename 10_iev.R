#if this was a uniform random variable problem we could simply use mean(), but couples 4,5 and 6 dont have the same probablity of having offprings with the dominant phenotype than the others

values = c(1,0,0,1,0,1)
e = c(1,1,1,0.75,0.5,0)*2 #probability for each genotype pairing, multiplied by the number of offsprings

r = sum(values*e)
r