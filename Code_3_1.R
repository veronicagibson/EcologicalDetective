#### Chapter 3
## Code 3.1

# specifying p and n

p<- c(0.1,0.2,0.3) # chance a fruit is infested

N<- 10 # sample number

# Equation 3.47

prob<- function(p,N) {
  (1-p)^N
}
prob(p,N)

# probability that 0 of the 10 fruit are infested is 
# 0.34867844, 0.10737418, 0.02824752 when the chance
# of infection is 0.1, 0.2, and 0.3

iter<- function(p,N) {
  for(i in 1:N)
    print(((N-i+1)/i)*(p/(1-p)))
}

# iteration shows the probability that 1:10 of the 10 
# of fruit are infested when the chance of infection
# is 0.1, 0.2, and 0.3

iter(p,N)
