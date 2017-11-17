# See slurmJob.sh

args <- commandArgs(TRUE)

jobNum = as.integer(args[1])

dir = "~/Data/Airlines"

input = list.files(dir, pattern = "csv")[jobNum]

d = read.csv(input)
fit = lm(y ~ ., d)

output = gsub("csv$", "rds", input))
saveRDS(fit, output)


