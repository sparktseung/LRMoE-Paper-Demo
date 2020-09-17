####################################################################
## 3 Comp
####################################################################

model.list = NULL

n.comp = 3
dim.m = 1
n.covar = 30

# Model 3-1

model.name = "lll"

comp.dist = matrix( c("ZI-lnorm", "ZI-lnorm", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.35), log(0.29), log(0.36)) - log(0.36)

zero.init = matrix( c(0.96, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.34, 1.41), c(6.43, 1.43), c(6.53, 1.38) )
                  )

hyper.alpha = 5

hyper.params = list(
                    list( c(5, 5, 5, 5, 5, 200),
                          c(5, 5, 5, 5, 5, 200),
                          c(5, 5, 5, 5, 5, 200) )
                    )

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)

# LRMoEFit(Y, X, 3, comp.dist, alpha.init, zero.init, params.init, eps = 0.05, ecm.iter.max = 500)

# Model 3-2

model.name = "llb"

comp.dist = matrix( c("ZI-lnorm", "ZI-lnorm", "ZI-burr"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.35), log(0.29), log(0.36)) - log(0.36)

zero.init = matrix( c(0.96, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.34, 1.41), c(6.43, 1.43), c(1.53, 1.59, 1449.42) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)


# Model 3-3

model.name = "wll"

comp.dist = matrix( c("ZI-weibull", "ZI-lnorm", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.35), log(0.29), log(0.36)) - log(0.36)

zero.init = matrix( c(0.96, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(0.9, 1425.7), c(6.43, 1.43), c(6.53, 1.38) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)


# Model 3-4

model.name = "iwl"

comp.dist = matrix( c("ZI-invgauss", "ZI-weibull", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.35), log(0.29), log(0.36)) - log(0.36)

zero.init = matrix( c(0.96, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(1530, 244), c(0.88, 1579.76), c(6.53, 1.38) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)

# Model 3-5

model.name = "lib"

comp.dist = matrix( c("ZI-lnorm", "ZI-invgauss", "ZI-burr"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.35), log(0.29), log(0.36)) - log(0.36)

zero.init = matrix( c(0.96, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.34, 1.41), c(1729, 256), c(1.53, 1.59, 1449.42) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)


model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)



####################################################################
## 4 Comp
####################################################################

n.comp = 4
dim.m = 1


# Model 4-1

model.name = "llll"

comp.dist = matrix( c("ZI-lnorm", "ZI-lnorm", "ZI-lnorm", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.27), log(0.24), log(0.20), log(0.29)) - log(0.29)

zero.init = matrix( c(0.96, 0.96, 0.97, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.32, 1.45), c(6.44, 1.41), c(6.50, 1.44), c(6.50, 1.34) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)

# Model 4-2

model.name = "lill"

comp.dist = matrix( c("ZI-lnorm", "ZI-invgauss", "ZI-lnorm", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.27), log(0.24), log(0.20), log(0.29)) - log(0.29)

zero.init = matrix( c(0.96, 0.96, 0.97, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.32, 1.45), c(1702, 269), c(6.50, 1.44), c(6.50, 1.34) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)


# Model 4-3

model.name = "will"

comp.dist = matrix( c("ZI-weibull", "ZI-invgauss", "ZI-lnorm", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.27), log(0.24), log(0.20), log(0.29)) - log(0.29)

zero.init = matrix( c(0.96, 0.96, 0.97, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(0.88, 1447.86), c(1702, 269), c(6.50, 1.44), c(6.50, 1.34) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)


# Model 4-4

model.name = "bill"

comp.dist = matrix( c("ZI-burr", "ZI-invgauss", "ZI-lnorm", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.27), log(0.24), log(0.20), log(0.29)) - log(0.29)

zero.init = matrix( c(0.96, 0.96, 0.97, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(1.80, 1.66, 1534.07), c(1702, 269), c(6.50, 1.44), c(6.50, 1.34) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)

# Model 4-5

model.name = "bilw"

comp.dist = matrix( c("ZI-burr", "ZI-invgauss", "ZI-lnorm", "ZI-weibull"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.27), log(0.24), log(0.20), log(0.29)) - log(0.29)

zero.init = matrix( c(0.96, 0.96, 0.97, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(1.80, 1.66, 1534.07), c(1702, 269), c(6.50, 1.44), c(0.879, 1503.55) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)

# Model 4-6

model.name = "wilw"

comp.dist = matrix( c("ZI-weibull", "ZI-invgauss", "ZI-lnorm", "ZI-weibull"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.27), log(0.24), log(0.20), log(0.29)) - log(0.29)

zero.init = matrix( c(0.96, 0.96, 0.97, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(0.881, 1567.43), c(1702, 269), c(6.50, 1.44), c(0.879, 1503.55) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)


# Model 4-7

model.name = "wiiw"

comp.dist = matrix( c("ZI-weibull", "ZI-invgauss", "ZI-invgauss", "ZI-weibull"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.27), log(0.24), log(0.20), log(0.29)) - log(0.29)

zero.init = matrix( c(0.96, 0.96, 0.97, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(0.881, 1567.43), c(1702, 269), c(1868, 273), c(0.879, 1503.55) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)



####################################################################
## 5 Comp
####################################################################

n.comp = 5
dim.m = 1

# Model 5-1

model.name = "lllll"

comp.dist = matrix( c("ZI-lnorm", "ZI-lnorm", "ZI-lnorm", "ZI-lnorm", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.21), log(0.19), log(0.16), log(0.26), log(0.18)) - log(0.18)

zero.init = matrix( c(0.96, 0.96, 0.97, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.35, 1.43), c(6.44, 1.44), c(6.58, 1.36), c(6.50, 1.37), c(6.34, 1.40) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)

# Model 5-2

model.name = "lllil"

comp.dist = matrix( c("ZI-lnorm", "ZI-lnorm", "ZI-lnorm", "ZI-invgauss", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.21), log(0.19), log(0.16), log(0.26), log(0.18)) - log(0.18)

zero.init = matrix( c(0.96, 0.96, 0.97, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.35, 1.43), c(6.44, 1.44), c(6.58, 1.36), c(1706, 305), c(6.34, 1.40) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)


# Model 5-3

model.name = "bllil"

comp.dist = matrix( c("ZI-burr", "ZI-lnorm", "ZI-lnorm", "ZI-invgauss", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.21), log(0.19), log(0.16), log(0.26), log(0.18)) - log(0.18)

zero.init = matrix( c(0.96, 0.96, 0.97, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(1.86, 1.58, 1582.01), c(6.44, 1.44), c(6.58, 1.36), c(1706, 305), c(6.34, 1.40) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)


# Model 5-4

model.name = "bwlil"

comp.dist = matrix( c("ZI-burr", "ZI-weibull", "ZI-lnorm", "ZI-invgauss", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.21), log(0.19), log(0.16), log(0.26), log(0.18)) - log(0.18)

zero.init = matrix( c(0.96, 0.96, 0.97, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(1.86, 1.58, 1582.01), c(0.86, 1597.99), c(6.58, 1.36), c(1706, 305), c(6.34, 1.40) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)


# Model 5-5

model.name = "bwliw"

comp.dist = matrix( c("ZI-burr", "ZI-weibull", "ZI-lnorm", "ZI-invgauss", "ZI-weibull"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.21), log(0.19), log(0.16), log(0.26), log(0.18)) - log(0.18)

zero.init = matrix( c(0.96, 0.96, 0.97, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(1.86, 1.58, 1582.01), c(0.86, 1597.99), c(6.58, 1.36), c(1706, 305), c(0.94, 1444.30) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)


# Model 5-6

model.name = "wllil"

comp.dist = matrix( c("ZI-weibull", "ZI-lnorm", "ZI-lnorm", "ZI-invgauss", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.21), log(0.19), log(0.16), log(0.26), log(0.18)) - log(0.18)

zero.init = matrix( c(0.96, 0.96, 0.97, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(0.88, 1439.81), c(6.44, 1.44), c(6.58, 1.36), c(1706, 305), c(6.34, 1.40) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)



####################################################################
## 6 Comp
####################################################################

n.comp = 6
dim.m = 1


# Model 6-1

model.name = "llllll"

comp.dist = matrix( c("ZI-lnorm", "ZI-lnorm", "ZI-lnorm", "ZI-lnorm", "ZI-lnorm", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.21), log(0.10), log(0.20), log(0.19), log(0.15), log(0.15)) - log(0.15)

zero.init = matrix( c(0.96, 0.96, 0.96, 0.96, 0.96, 0.97),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.35, 1.43), c(6.44, 1.46), c(6.46, 1.40), c(6.50, 1.38), c(6.31, 1.41), c(6.59, 1.36) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)

# Model 6-2

model.name = "llblll"

comp.dist = matrix( c("ZI-lnorm", "ZI-lnorm", "ZI-burr", "ZI-lnorm", "ZI-lnorm", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.21), log(0.10), log(0.20), log(0.19), log(0.15), log(0.15)) - log(0.15)

zero.init = matrix( c(0.96, 0.96, 0.96, 0.96, 0.96, 0.97),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.35, 1.43), c(6.44, 1.46), c(1.77, 1.50, 1619.32), c(6.50, 1.38), c(6.31, 1.41), c(6.59, 1.36) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)


# Model 6-3

model.name = "llwlll"

comp.dist = matrix( c("ZI-lnorm", "ZI-lnorm", "ZI-weibull", "ZI-lnorm", "ZI-lnorm", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.21), log(0.10), log(0.20), log(0.19), log(0.15), log(0.15)) - log(0.15)

zero.init = matrix( c(0.96, 0.96, 0.96, 0.96, 0.96, 0.97),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.35, 1.43), c(6.44, 1.46), c(0.87, 1535.95), c(6.50, 1.38), c(6.31, 1.41), c(6.59, 1.36) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)



# Model 6-4

model.name = "liblll"

comp.dist = matrix( c("ZI-lnorm", "ZI-invgauss", "ZI-burr", "ZI-lnorm", "ZI-lnorm", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.21), log(0.10), log(0.20), log(0.19), log(0.15), log(0.15)) - log(0.15)

zero.init = matrix( c(0.96, 0.96, 0.96, 0.96, 0.96, 0.97),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.35, 1.43), c(1815, 248), c(1.77, 1.50, 1619.32), c(6.50, 1.38), c(6.31, 1.41), c(6.59, 1.36) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)



# Model 6-5

model.name = "liwlll"

comp.dist = matrix( c("ZI-lnorm", "ZI-invgauss", "ZI-weibull", "ZI-lnorm", "ZI-lnorm", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.21), log(0.10), log(0.20), log(0.19), log(0.15), log(0.15)) - log(0.15)

zero.init = matrix( c(0.96, 0.96, 0.96, 0.96, 0.96, 0.97),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.35, 1.43), c(1815, 248), c(0.87, 1535.95), c(6.50, 1.38), c(6.31, 1.41), c(6.59, 1.36) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)


# Model 6-6

model.name = "liwlbl"

comp.dist = matrix( c("ZI-lnorm", "ZI-invgauss", "ZI-weibull", "ZI-lnorm", "ZI-burr", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.21), log(0.10), log(0.20), log(0.19), log(0.15), log(0.15)) - log(0.15)

zero.init = matrix( c(0.96, 0.96, 0.96, 0.96, 0.96, 0.97),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.35, 1.43), c(1815, 248), c(0.87, 1535.95), c(6.50, 1.38), c(1.88, 1.83, 1560.95), c(6.59, 1.36) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)


# Model 6-7

model.name = "liwibl"

comp.dist = matrix( c("ZI-lnorm", "ZI-invgauss", "ZI-weibull", "ZI-invgauss", "ZI-burr", "ZI-lnorm"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.21), log(0.10), log(0.20), log(0.19), log(0.15), log(0.15)) - log(0.15)

zero.init = matrix( c(0.96, 0.96, 0.96, 0.96, 0.96, 0.97),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.35, 1.43), c(1815, 248), c(0.87, 1535.95), c(1707, 303), c(1.88, 1.83, 1560.95), c(6.59, 1.36) )
)

hyper.alpha = 5

hyper.params = list(
  list( c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200),
        c(5, 5, 5, 5, 5, 200) )
)

model.list[[length(model.list)+1]] = list(model.name = model.name,
                                          n.comp = n.comp, comp.dist = comp.dist,
                                          alpha.init = alpha.init, zero.init = zero.init, params.init = params.init,
                                          hyper.alpha = hyper.alpha, hyper.params = hyper.params)









save(model.list, file = "model_list.Rda")
