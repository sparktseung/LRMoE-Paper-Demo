Introduction
------------

In this document, we will transform the cleaned data `freMTPLClean` (see
[here](https://work.sparktseung.com/LRMoE-Paper-Demo/3-RealDataPreliminary/RealDataCleaning-jekyll.html))
into the required format by the `LRMoE` model. In addition, we will use
the Clustered Method of Moments (CMM) to obtain some initialization of
parameter values before fitting the models.

    # Load previoucly cleaned data
    load("freMTPLClean.Rda")

Formatting Data
---------------

For illustration purposes, we will fit an LRMoE with one respose
variable `ClaimAmount` only. The following code shows how to format
input matrices `Y` and `X` required by the `LRMoE` package.

    # Make Y matrix
    sample.size = nrow(df)
    Y = matrix( c(rep(0, sample.size),    # = tl.1
                  df$ClaimAmount,     # = yl.1
                  df$ClaimAmount,     # = tu.1
                  rep(Inf, sample.size)   # = tu.1
                  ), 
               ncol = 4, byrow = FALSE)

    # Make X matrix
    X.continuous = cbind(df$CarAge, df$DriverAge)
    X.power = model.matrix(~df$Power, data = df)     # Default Power  is 'd'
    X.brand = model.matrix(~df$Brand, data = df)     # Default Brand  is 'Fiat'
    X.gas = model.matrix(~df$Gas, data = df)         # Default Gas    is 'Diesel'
    X.region = model.matrix(~df$Region, data = df)   # Default Region is 'Aquitaine'
    X = matrix(cbind(rep(1, sample.size), # Intercept
                     X.continuous, X.power[,-1], X.brand[,-1], X.gas[,-1], X.region[,-1]),
               nrow = sample.size, byrow = FALSE)

    colnames(X) = c("Intercept", "CarAge", "DriverAge",
                    "Powere", "Powerf", "Powerg", "Powerh", "Poweri", "Powerj", 
                    "Powerk", "Powerl", "Powerm", "Powern", "Powero",
                    "BrandJK", "BrandMCB", "BrandOGF", "BrandOther", "BrandRNC", "BrandVAS",
                    "GasRegular",
                    "RegionBN", "RegionB", "RegionC", "RegionHN", "RegionIF", 
                    "RegionL", "RegionNPC", "RegionPL", "RegionPC")

We will save the data for the fitting procedures later.

    save(X, file = "X.Rda")
    save(Y, file = "Y.Rda")

Parameter Initialization
------------------------

The `LRMoE` fitting function also requires initialization of `n.comp`
(number of latent components), `comp.dist` (component distributions by
dimension and by component), `zero.init` (zero inflation) and
`params.init` (initialization of component distribution parameters).

Since component distributions included in `LRMoE` are all uni-modal, a
good starting point is to observe the numbers of components is to count
the number of peaks in the previous histogram of data. We will consider
3~6 latent components, each with 5 combinations of component
distributions. For each case, we use k-means clustering and matching of
moments to roughly choose initial parameters.

    # Normalize data
    X.norm = X

    X.norm[,2] = # CarAge
      (X.norm[,2] - mean(X.norm[,2]))/sd(X.norm[,2])
    X.norm[,3] = # DriverAge
      (X.norm[,3] - mean(X.norm[,3]))/sd(X.norm[,3])

The `LRMoE` package contains a Clustered Method of Moments
initialization function which is used in conjunction of `kmeans`. We
look at the 3-component case in detail and skip the rest.

### 3 Latent Components

    set.seed(7777) # For reproducible results
    n.comp = 3
    norm.init.analysis.3 = LRMoE::CMMInit(Y, X.norm, n.comp, type = 'S') # 'S' is for Severity

The returned list `norm.init.analysis.3` contains cluster proportion (of
the entire population), zero inflation, summary statsitics and parameter
initializations for all selection of component distributions. The user
can then choose which distributions to use. As a general rule of thumb,
initialization with very extreme parameter values should be avoided.

For example, the initialization of the first component is as follows.

    norm.init.analysis.3[[1]]

    ## [[1]]
    ## [[1]]$cluster.prop
    ## [1] 0.3478111
    ## 
    ## [[1]]$zero.prop
    ## [1] 0.9605602
    ## 
    ## [[1]]$mean.pos
    ## [1] 1529.662
    ## 
    ## [[1]]$var.pos
    ## [1] 14644842
    ## 
    ## [[1]]$cv.pos
    ## [1] 2.501766
    ## 
    ## [[1]]$skew.pos
    ## [1] 13.7302
    ## 
    ## [[1]]$kurt.pos
    ## [1] 239.1563
    ## 
    ## [[1]]$gamma.init
    ##        shape        scale 
    ##    0.1597741 9573.9051044 
    ## 
    ## [[1]]$lnorm.init
    ##  meanlog    sdlog 
    ## 6.341693 1.407913 
    ## 
    ## [[1]]$invgauss.init
    ##      mean     scale 
    ## 1529.6624  244.4005 
    ## 
    ## [[1]]$weibull.init
    ##  shape.shape  scale.scale 
    ##    0.8998681 1425.7300782 
    ## 
    ## [[1]]$burr.init
    ##      shape1      shape2       scale 
    ##    1.902993    1.627074 1596.197817 
    ## 
    ## 
    ## [[2]]
    ## [[2]]$cluster.prop
    ## [1] 0.2851368
    ## 
    ## [[2]]$zero.prop
    ## [1] 0.960272
    ## 
    ## [[2]]$mean.pos
    ## [1] 1728.664
    ## 
    ## [[2]]$var.pos
    ## [1] 20164813
    ## 
    ## [[2]]$cv.pos
    ## [1] 2.597685
    ## 
    ## [[2]]$skew.pos
    ## [1] 12.47075
    ## 
    ## [[2]]$kurt.pos
    ## [1] 192.4392
    ## 
    ## [[2]]$gamma.init
    ##        shape        scale 
    ## 1.481928e-01 1.166497e+04 
    ## 
    ## [[2]]$lnorm.init
    ##  meanlog    sdlog 
    ## 6.431389 1.430885 
    ## 
    ## [[2]]$invgauss.init
    ##      mean     scale 
    ## 1728.6641  256.1755 
    ## 
    ## [[2]]$weibull.init
    ##  shape.shape  scale.scale 
    ##    0.8815534 1579.7583737 
    ## 
    ## [[2]]$burr.init
    ##      shape1      shape2       scale 
    ##    1.467644    1.778624 1379.839573 
    ## 
    ## 
    ## [[3]]
    ## [[3]]$cluster.prop
    ## [1] 0.3670521
    ## 
    ## [[3]]$zero.prop
    ## [1] 0.9617825
    ## 
    ## [[3]]$mean.pos
    ## [1] 1768.839
    ## 
    ## [[3]]$var.pos
    ## [1] 17726686
    ## 
    ## [[3]]$cv.pos
    ## [1] 2.380266
    ## 
    ## [[3]]$skew.pos
    ## [1] 11.21977
    ## 
    ## [[3]]$kurt.pos
    ## [1] 159.3387
    ## 
    ## [[3]]$gamma.init
    ##        shape        scale 
    ## 1.765018e-01 1.002165e+04 
    ## 
    ## [[3]]$lnorm.init
    ##  meanlog    sdlog 
    ## 6.529594 1.377305 
    ## 
    ## [[3]]$invgauss.init
    ##      mean     scale 
    ## 1768.8391  312.2033 
    ## 
    ## [[3]]$weibull.init
    ## shape.shape scale.scale 
    ##     0.86642  1600.22122 
    ## 
    ## [[3]]$burr.init
    ##      shape1      shape2       scale 
    ##    1.527935    1.585007 1449.421882

### 4~6 Latent Components

    set.seed(7777) # For reproducible results
    n.comp = 4
    norm.init.analysis.4 = LRMoE::CMMInit(Y, X.norm, n.comp, type = 'S')

    set.seed(7777) # For reproducible results
    n.comp = 5
    norm.init.analysis.5 = LRMoE::CMMInit(Y, X.norm, n.comp, type = 'S')

    set.seed(7777) # For reproducible results
    n.comp = 6
    norm.init.analysis.6 = LRMoE::CMMInit(Y, X.norm, n.comp, type = 'S')

We will save all initilizations for use in the next step.

    save(norm.init.analysis.3, file = "RealDataInit3.Rda")
    save(norm.init.analysis.4, file = "RealDataInit4.Rda")
    save(norm.init.analysis.5, file = "RealDataInit5.Rda")
    save(norm.init.analysis.6, file = "RealDataInit6.Rda")
