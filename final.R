lead <- read.table("lead.txt")
col_names <- c("id", "smeltdis", "age_mo", "female", "iqf", "lead72", "lead73", 
               "fst2yrs", "totyrs", "pica", "colic", "clumsy", "irrit", 
               "convulse", "fwtap", "tap", "visreact", "audreact", "hypscore")
colnames(lead) <- col_names

lead$female <- factor(lead$female, levels = c(0,1), labels = c("Male", "Female"))
lead$fst2yrs <- factor(lead$fst2yrs, levels = c(0,1), labels = c("No", "Yes"))
lead$pica <- factor(lead$pica, levels = c(0,1), labels = c("No", "Yes"))
lead$colic <- factor(lead$colic, levels = c(0,1), labels = c("No", "Yes"))
lead$clumsy <- factor(lead$clumsy, levels = c(0,1), labels = c("No", "Yes"))
lead$irrit <- factor(lead$irrit, levels = c(0,1), labels = c("No", "Yes"))
lead$convulse <- factor(lead$convulse, levels = c(0,1), labels = c("No", "Yes"))
lead$hypscore <- factor(lead$hypscore, levels = c(0,1,2,3,4), 
                        labels = c("Never", "Seldom", "Sometimes", "Often", 
                                   "Always"), ordered = TRUE)


lead$smeltdis <- factor(lead$smeltdis, levels = c(1,2,3), 
                        labels = c("0-1 miles", "1-2.5 miles", "2.5-4.1 miles"), 
                        ordered = TRUE)



