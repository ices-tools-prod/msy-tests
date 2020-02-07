## Extract results of interest, write TAF output tables

## Before:
## After:

library(icesTAF)

mkdir("output")

FIT <- readRDS("model/fit.rds")
SIM <- readRDS("model/sim.rds")

cat(capture.output(SIM$Refs), sep = "\n", file = "output/refs.txt")
