
clusterEvalQ(cl, list.files())


x = 1:10
clusterExport(cl, "x")
clusterEvalQ(cl, length(x))

clusterEvalQ(cl, x[2])
clusterCall(cl, `[`, x, 2)


clusterCall(cl, f, 21)