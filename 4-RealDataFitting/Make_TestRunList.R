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
alpha.init[,1] = c(log(0.21), log(0.25), log(0.54)) - log(0.54)

zero.init = matrix( c(0.96, 0.97, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.57, 1.33), c(6.48, 1.52), c(5.39, 2.20) )
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


# Model 3-2

model.name = "llb"

comp.dist = matrix( c("ZI-lnorm", "ZI-lnorm", "ZI-burr"),
                    nrow = dim.m, byrow = TRUE)

alpha.init = matrix(0, nrow = n.comp, ncol = n.covar)
alpha.init[,1] = c(log(0.21), log(0.25), log(0.54)) - log(0.54)

zero.init = matrix( c(0.96, 0.97, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(2, 5, 18582), c(20, 100), c(2, 5, 18294) )
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
alpha.init[,1] = c(log(0.21), log(0.25), log(0.54)) - log(0.54)

zero.init = matrix( c(0.96, 0.97, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(3, 2605), c(6.48, 1.52), c(5.39, 2.20) )
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
alpha.init[,1] = c(log(0.21), log(0.25), log(0.54)) - log(0.54)

zero.init = matrix( c(0.96, 0.97, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(1737, 355), c(3, 3079), c(5.39, 2.20) )
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
alpha.init[,1] = c(log(0.21), log(0.25), log(0.54)) - log(0.54)

zero.init = matrix( c(0.96, 0.97, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(2, 5, 18582), c(2053, 228), c(2, 5, 18294) )
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
alpha.init[,1] = c(log(0.12), log(0.18), log(0.49), log(0.21)) - log(0.21)

zero.init = matrix( c(0.96, 0.97, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(5.27, 2.34), c(6.50, 1.45), c(5.66, 2.05), c(6.33, 1.52) )
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
alpha.init[,1] = c(log(0.12), log(0.18), log(0.49), log(0.21)) - log(0.21)

zero.init = matrix( c(0.96, 0.97, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(5.27, 2.34), c(1910, 266), c(5.66, 2.05), c(6.33, 1.52) )
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
alpha.init[,1] = c(log(0.12), log(0.18), log(0.49), log(0.21)) - log(0.21)

zero.init = matrix( c(0.96, 0.97, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(3, 4522), c(1910, 266), c(5.66, 2.05), c(6.33, 1.52) )
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
alpha.init[,1] = c(log(0.12), log(0.18), log(0.49), log(0.21)) - log(0.21)

zero.init = matrix( c(0.96, 0.97, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(2, 5, 22166), c(1910, 266), c(5.66, 2.05), c(6.33, 1.52) )
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
alpha.init[,1] = c(log(0.12), log(0.18), log(0.49), log(0.21)) - log(0.21)

zero.init = matrix( c(0.96, 0.97, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(2, 5, 22166), c(1910, 266), c(5.66, 2.05), c(3, 2672) )
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
alpha.init[,1] = c(log(0.12), log(0.18), log(0.49), log(0.21)) - log(0.21)

zero.init = matrix( c(0.96, 0.97, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(3, 4522), c(1910, 266), c(5.66, 2.05), c(3, 2672) )
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
alpha.init[,1] = c(log(0.12), log(0.18), log(0.49), log(0.21)) - log(0.21)

zero.init = matrix( c(0.96, 0.97, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(3, 4522), c(1910, 266), c(2348, 36), c(3, 2672) )
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
alpha.init[,1] = c(log(0.11), log(0.15), log(0.13), log(0.15), log(0.46)) - log(0.46)

zero.init = matrix( c(0.96, 0.97, 0.96, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(5.26, 2.35), c(6.54, 1.43), c(6.39, 1.57), c(6.55, 1.34), c(5.63, 2.06) )
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
alpha.init[,1] = c(log(0.11), log(0.15), log(0.13), log(0.15), log(0.46)) - log(0.46)

zero.init = matrix( c(0.96, 0.97, 0.96, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(5.26, 2.35), c(6.54, 1.43), c(6.39, 1.57), c(1709, 344), c(5.63, 2.06) )
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
alpha.init[,1] = c(log(0.11), log(0.15), log(0.13), log(0.15), log(0.46)) - log(0.46)

zero.init = matrix( c(0.96, 0.97, 0.96, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(2, 5, 22600), c(6.54, 1.43), c(6.39, 1.57), c(1709, 344), c(5.63, 2.06) )
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
alpha.init[,1] = c(log(0.11), log(0.15), log(0.13), log(0.15), log(0.46)) - log(0.46)

zero.init = matrix( c(0.96, 0.97, 0.96, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(2, 5, 22600), c(3, 2912), c(6.39, 1.57), c(1709, 344), c(5.63, 2.06) )
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
alpha.init[,1] = c(log(0.11), log(0.15), log(0.13), log(0.15), log(0.46)) - log(0.46)

zero.init = matrix( c(0.96, 0.97, 0.96, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(2, 5, 22600), c(3, 2912), c(6.39, 1.57), c(1709, 344), c(3, 3505) )
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
alpha.init[,1] = c(log(0.11), log(0.15), log(0.13), log(0.15), log(0.46)) - log(0.46)

zero.init = matrix( c(0.96, 0.97, 0.96, 0.96, 0.96),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(3, 4610), c(6.54, 1.43), c(6.39, 1.57), c(1709, 344), c(5.63, 2.06) )
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
alpha.init[,1] = c(log(0.07), log(0.10), log(0.19), log(0.15), log(0.34), log(0.15)) - log(0.15)

zero.init = matrix( c(0.96, 0.96, 0.96, 0.96, 0.96, 0.97),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.54, 1.45), c(6.41, 1.56), c(5.44, 2.30), c(6.55, 1.34), c(6.05, 1.80), c(6.52, 1.44) )
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
alpha.init[,1] = c(log(0.07), log(0.10), log(0.19), log(0.15), log(0.34), log(0.15)) - log(0.15)

zero.init = matrix( c(0.96, 0.96, 0.96, 0.96, 0.96, 0.97),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.54, 1.45), c(6.41, 1.56), c(2, 4, 24073), c(6.55, 1.34), c(6.05, 1.80), c(6.52, 1.44) )
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
alpha.init[,1] = c(log(0.07), log(0.10), log(0.19), log(0.15), log(0.34), log(0.15)) - log(0.15)

zero.init = matrix( c(0.96, 0.96, 0.96, 0.96, 0.96, 0.97),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.54, 1.45), c(6.41, 1.56), c(4, 4911), c(6.55, 1.34), c(6.05, 1.80), c(6.52, 1.44) )
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
alpha.init[,1] = c(log(0.07), log(0.10), log(0.19), log(0.15), log(0.34), log(0.15)) - log(0.15)

zero.init = matrix( c(0.96, 0.96, 0.96, 0.96, 0.96, 0.97),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.54, 1.45), c(2049, 197), c(2, 4, 24073), c(6.55, 1.34), c(6.05, 1.80), c(6.52, 1.44) )
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
alpha.init[,1] = c(log(0.07), log(0.10), log(0.19), log(0.15), log(0.34), log(0.15)) - log(0.15)

zero.init = matrix( c(0.96, 0.96, 0.96, 0.96, 0.96, 0.97),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.54, 1.45), c(2049, 197), c(3, 4911), c(6.55, 1.34), c(6.05, 1.80), c(6.52, 1.44) )
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
alpha.init[,1] = c(log(0.07), log(0.10), log(0.19), log(0.15), log(0.34), log(0.15)) - log(0.15)

zero.init = matrix( c(0.96, 0.96, 0.96, 0.96, 0.96, 0.97),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.54, 1.45), c(2049, 197), c(3, 4911), c(6.55, 1.34), c(2, 5, 15653), c(6.52, 1.44) )
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
alpha.init[,1] = c(log(0.07), log(0.10), log(0.19), log(0.15), log(0.34), log(0.15)) - log(0.15)

zero.init = matrix( c(0.96, 0.96, 0.96, 0.96, 0.96, 0.97),
                    nrow = dim.m, byrow = TRUE)

params.init = list( list( c(6.54, 1.45), c(2049, 197), c(3, 4911), c(1706, 343), c(2, 5, 15653), c(6.52, 1.44) )
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
