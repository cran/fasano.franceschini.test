test_that("test for bad inputs", {
    set.seed(1)

    S1 <- "a"
    S2 <- data.frame(rnorm(n = 50))
    expect_error(fasano.franceschini.test(S1, S2, nPermute = 0))
    expect_error(fasano.franceschini.test(S2, S1, nPermute = 0))

    S1 <- data.frame(rnorm(n = 61))
    S2 <- data.frame(rnorm(n = 72), rnorm(n = 72))
    expect_error(fasano.franceschini.test(S1, S2, nPermute = 0))
    expect_error(fasano.franceschini.test(S2, S1, nPermute = 0))

    S1 <- data.frame(rnorm(n = 61), rnorm(n = 61))
    S2 <- data.frame(rnorm(n = 72), rnorm(n = 72))
    expect_error(fasano.franceschini.test(S1, S2, nPermute = -1))
    expect_error(fasano.franceschini.test(S1, S2, nPermute = 0.1))
    expect_error(fasano.franceschini.test(S1, S2, nPermute = 1.2))

    expect_error(fasano.franceschini.test(S1, S2, nPermute = 0, threads = -1))
    expect_error(fasano.franceschini.test(S1, S2, nPermute = 0, threads = 0))
    expect_error(fasano.franceschini.test(S1, S2, nPermute = 0, threads = 0.1))
    expect_error(fasano.franceschini.test(S1, S2, nPermute = 0, threads = 1.1))

    ## Check for deprecation warning, remove in future releases
    expect_warning(fasano.franceschini.test(S1, S2, nPermute = 0, cores = 1))
    ##

    S1 <- rnorm(n = 50)
    S2 <- data.frame(rnorm(n = 50))
    expect_error(fasano.franceschini.test(S1, S2, nPermute = 0))
    expect_error(fasano.franceschini.test(S2, S1, nPermute = 0))

    S1 <- rnorm(n = 60)
    S2 <- as.matrix(rnorm(n = 60))
    expect_error(fasano.franceschini.test(S1, S2, nPermute = 0))
    expect_error(fasano.franceschini.test(S2, S1, nPermute = 0))

    expect_error(fasano.franceschini.test(S1, S2, method = "a"))
    expect_error(fasano.franceschini.test(S1, S2, method = 1))

    expect_error(fasano.franceschini.test(S1, S2, method = 'o', times = 'a'))
    expect_error(fasano.franceschini.test(S1, S2, method = 'o', times = 0))
    expect_error(fasano.franceschini.test(S1, S2, method = 'o', times = -1))
    expect_error(fasano.franceschini.test(S1, S2, method = 'o', times = 2.1))
})