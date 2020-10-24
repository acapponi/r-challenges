k = 2
n = 1

t = 2**k

p=0


for(i in n:t){
  p =  p + (factorial(t)/(factorial(i)*factorial(t-i)))*((0.25)**i)*((0.75)**(t-i))
}

round(p,3)

#this link has a nice explanation of the statistic needed to solve it https://medium.com/dev-genius/active-learning-bioinformatics-2-0-87c94f36e4ad