---
## (Not on Windows)

# Create their Own Cluster
+ mclapply
+ mcmapply
+ mcMap
+ pvec

## Dispatch a Task
+ mcparallel
+ mccollect



---

# Creating and Deleting a Cluster
+ makeCluster
+ detectCores
+ stopCluster

+ makeForkCluster
+ makePSOCKcluster

---

# Evaluating Commands and Calls across the Workers

+ clusterEvalQ
+ clusterExport
+ clusterCall

+ clusterApply
+ clusterApplyLB
+ clusterMap

+ parApply
+ parLapply
+ parSapply
+ parRapply
+ parCapply
+ parLapplyLB
+ parSapplyLB


+ clusterSplit
+ splitIndices


---
# Random Number Generation

+ clusterSetRNGStream
+ nextRNGStream
+ nextRNGSubStream
+ mc.reset.stream

#

mcaffinity
setDefaultCluster
