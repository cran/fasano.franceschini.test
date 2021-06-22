## -----------------------------------------------------------------------------
library(fasano.franceschini.test)

#set seed for reproducible example
set.seed(123)

#create 2-D samples with the same underlying distributions
sample1Data <- data.frame(
  x = rnorm(n = 10, mean = 0, sd = 1),
  y = rnorm(n = 10, mean = 0, sd = 1)
)
sample2Data <- data.frame(
  x = rnorm(n = 10, mean = 0, sd = 1),
  y = rnorm(n = 10, mean = 0, sd = 1)
)

fasano.franceschini.test(S1 = sample1Data, S2 = sample2Data)

## -----------------------------------------------------------------------------
#set seed for reproducible example
set.seed(123)

#create 2-D samples with the same underlying distributions
sample1Data <- data.frame(
  x = rnorm(n = 10, mean = 0, sd = 1),
  y = rnorm(n = 10, mean = 0, sd = 1)
)
sample2Data <- data.frame(
  x = rnorm(n = 10, mean = 0, sd = 1),
  y = rnorm(n = 10, mean = 0, sd = 1)
)

fasano.franceschini.test(S1 = sample1Data, S2 = sample2Data, nBootstrap = 10, cores = 1)


