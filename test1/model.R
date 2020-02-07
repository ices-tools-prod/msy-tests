## Run analysis, write model results

## Before:
## After:

library(icesTAF)
taf.library(msy)

mkdir("model")

stk <- readRDS("bootstrap/data/FLStocks/recage5.rds")

# set seed
set.seed(43059309)

FIT <- eqsr_fit(stk,
  nsamp = 1000,
  models = c("Ricker", "Segreg")
)

# check
eqsr_plot(FIT,n=2e4)

SIM <- eqsim_run(FIT,
  bio.years = c(2004, 2013),
  sel.years = c(2004, 2013),
  Fcv = 0.24,
  Fphi = 0.42,
  Blim = 106000,
  Bpa = 200000,
  Fscan = seq(0, 1.2, len = 40),
  verbose = FALSE
)

# write out
saveRDS(FIT, "model/fit.rds")
saveRDS(SIM, "model/sim.rds")
