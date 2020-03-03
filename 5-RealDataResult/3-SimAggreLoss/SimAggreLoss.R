# Load data
load("x.Rda")
load("y.Rda")
load("1_llblll.Rda")

# Load packages
library(LRMoE)
library(doParallel)
library(parallel)

ncore=10

cl = makePSOCKcluster(ncore)
registerDoParallel(cl)

# foreach(b=1:n.run) %dopar% {do_fitting(b, model.fit, run.list[[b]])}
for(j in 1:1){
  
  filename = toString(paste("simtable_", j, ".Rda", sep=""))
  
  sample.size = 50
  sim.table = parallel::parApply(cl = cl, X, 1,
                    FUN = LRMoE::ind.data.simulator, 
                    model.fit$alpha.fit, model.fit$comp.dist, 
                    model.fit$zero.fit, model.fit$params.fit, 
                    sample.size = sample.size)

  save(sim.table, file = filename)
}

stopCluster(cl)




