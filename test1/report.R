## Prepare plots and tables for report

## Before:
## After:

library(icesTAF)

mkdir("report")

FIT <- readRDS("model/fit.rds")
SIM <- readRDS("model/sim.rds")


taf.png("srplot")
eqsr_plot(FIT, n = 2e4)
dev.off()

taf.png("eqsim_catch")
eqsim_plot(SIM, catch = TRUE)
dev.off()

taf.png("eqsim_range")
eqsim_plot_range(SIM, type = "mean")
dev.off()
