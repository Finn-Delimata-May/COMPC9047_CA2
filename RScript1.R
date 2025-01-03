library(readxl)
participants_data_final_control <- read_excel("College Documents/Sem1_Data_Analy
tics_for_Immersive_Environments/participants_data_final_control.xlsx")

plot(participants_data_final_control$Change_in_Score)
summary(participants_data_final_control$Change_in_Score)
var.s = sd(participants_data_final_control$Change_in_Score)
var.rows = nrow(participants_data_final_control$Change_in_Score)

library(readxl)
participants_data_final_xp <- read_excel("College Documents/Sem1_Data_Analy
tics_for_Immersive_Environments/participants_data_final_xp.xlsx")

var.se = var.s/sqrt(var.rows)