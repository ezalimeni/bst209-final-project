rm(list = ls())
 load("~/Downloads/opt.rda")
 View(opt)
 
 #Make LBW variable
 opt$LBW <- ifelse(opt$Birthweight < 2500, 1, 0)
 
 #Prop table of LBW
 table(opt$LBW)
 prop.table(table(opt$LBW))
 
 #Barplot of LBW vs no
 prop_lbw <- prop.table(table(opt$LBW))
 barplot(prop_lbw,
         main = "Proportion of Low Birth Weight (LBW)",
         ylab = "Proportion",
         names.arg = c("Normal", "LBW"),
         col = c("skyblue", "tomato"),
         ylim = c(0, 1))
 
 #Transform predicotr variables to 0,1 as needed
 
 #Missing variables