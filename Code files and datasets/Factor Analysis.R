setwd("C:\\Users\\PARTHI vs BHARATHI\\Downloads\\PRAXIS\\A Term 2\\MKTA\\excercise")

library(readxl)

library(psych)


df = read_xlsx("Exercise - Dimensionality Reduction.xlsx", sheet = "Data")

View(df)
dim(df)

str(df)

# reading without the caseid column
df <- df[,-c(1)]


#EFA without any rotation
fac_anal <- fa(nfactors = 3, rotate = 'none', r = cor(df), fm = 'pa')

#plot
factor.plot(fac_anal, xlim=c(-1,1), ylim=c(-1,1), title="Factor Analysis")
fac_anal
print(fac_anal, cut = 0.3)

