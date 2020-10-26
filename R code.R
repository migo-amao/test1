# library(glmnet)


library(MASS)
library(pROC)
library(foreach)
library(caret)
library(partykit)
library(data.table)
library(dplyr)
# library(caTools)
library(corrplot)
library(tidyr)



df<-data.frame(fread(file='hsbdemo.csv', header=TRUE, sep=','))

col_names<-colnames(df)

# funs<-summary(df)

setDT(df)

funs<-df[,list(
        sum_read = sum(read),
        mean_read = mean(read),
        max_read = max(read),
        min_read = min(read),
        sum_write = sum(write),
        mean_write = mean(write),
        max_write = max(write),
        min_write = min(write),
        sum_math = sum(math),
        mean_math = mean(math),
        max_math = max(math),
        min_math = min(math),
        sum_science = sum(science),
        mean_science = mean(science),
        max_science = max(science),
        min_science = min(science),
        sum_socst = sum(socst),
        mean_socst = mean(socst),
        max_socst = max(socst),
        min_socst = min(socst),
        sum_awards = sum(awards),
        mean_awards = mean(awards),
        max_awards = max(awards),
        min_awards = min(awards),
        sum_cid = sum(cid),
        mean_cid = mean(cid),
        max_cid = max(cid),
        min_cid = min(cid)),
        by = list(female,ses, schtyp, prog, honors)]
