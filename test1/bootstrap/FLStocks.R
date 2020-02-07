
taf.library(msy)
taf.library(FLCore)

data(icesStocks)

lapply(icesStocks, range)

# make a stock with recruitment at age 5
recage5 <- icesStocks$saiIC[paste(5:14), ]

saveRDS(recage5, file = "recage5.rds")
