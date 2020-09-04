n = 25
E = c(0,1)
prob = 0.5
x = vector(length=n)
times = 5000

for(i in 0:times){
  xi = 0
  for(j in 1:n){
    samp = sample(E,1,TRUE,prob = c(1-prob,prob))
    
    if(samp == 1){
      xi = xi + 1
    }
  }
  x[xi] = x[xi]+1
  #print(xi)
}
barplot(x)