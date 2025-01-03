library(readxl)
participants_data_final_control <- read_excel("College Documents/Sem1_Data_Analy
tics_for_Immersive_Environments/participants_data_final_control.xlsx")

# The lines below establish variables from the data read in from the control 
# group. "mc" means the mean from the control. 
var.mc = mean(participants_data_final_control$Change_in_Score)
var.s = sd(participants_data_final_control$Change_in_Score)
var.rows = nrow(participants_data_final_control)

library(readxl)
participants_data_final_xp <- read_excel("College Documents/Sem1_Data_Analy
tics_for_Immersive_Environments/participants_data_final_xp.xlsx")

var.mx = mean(participants_data_final_xp$Change_in_Score)

# The next few lines establish the 95% Confidence Interval for the Control
var.se = var.s/sqrt(var.rows)   # Calculates Standard Error
var.nse = qt(0.975, var.rows)   # The number of SEs away from the mean
print(var.mc + var.nse*var.se)
print(var.mc - var.nse*var.se)
