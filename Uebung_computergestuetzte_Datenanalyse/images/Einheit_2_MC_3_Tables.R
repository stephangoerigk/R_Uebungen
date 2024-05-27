setwd("/Users/jani/Desktop/CFH/Einführung in R/Rep/Uebung_computergestuetzte_Datenanalyse/images")
library(flextable)

df = data.frame(Messzeitpunkt = c("t0", "t0", "t1", "t1", "Differenzwert", "Differenzwert"),
                Gruppe = c("No Training", "Training", "No Training", "Training", "No Training", "Training"),
                M = c(66.75, 64.43, 66.81, 48.88, 2.32, 17.93),
                SD = c(19.03, 18.14, 12.66, 16.92, 9.55, 13.59)
)
df


df_flextable = flextable(df)
df_flextable = italic(df_flextable, j = ~ M + SD, part = "header")
df_flextable = width(df_flextable, j = "Gruppe", width = 1.0)
df_flextable = fontsize(df_flextable, size = 6, part = "all") 
df_flextable = set_table_properties(df_flextable, width = 0.5, layout = "autofit")
save_as_image(df_flextable, "Einheit_2_MC_3_a.png")
  
# Alternative 1
df_alt1 <- data.frame(Zeitpunkt = c("t0", "t0", "t1", "t1", "Differenz", "Differenz"),
                      Bedingung = c("Control", "Experiment", "Control", "Experiment", "Control", "Experiment"),
                      Mittelwert = c(19.03, 18.14, 12.66, 16.92, 9.55, 13.59),
                      Standardabweichung = c(66.75, 64.43, 66.81, 48.88, 2.32, 17.93)
)

df_alt1_flextable = flextable(df_alt1)
df_alt1_flextable = italic(df_alt1_flextable, j = ~ Mittelwert + Standardabweichung, part = "header")
df_alt1_flextable = width(df_alt1_flextable, j = "Bedingung", width = 1.0)
df_alt1_flextable = fontsize(df_alt1_flextable, size = 6, part = "all") 
df_alt1_flextable = set_table_properties(df_alt1_flextable, width = 0.5, layout = "autofit")
save_as_image(df_alt1_flextable, "Einheit_2_MC_3_b.png")

# Alternative 2
df_alt2 <- data.frame(Zeitpunkt = c("t0", "t0", "t1", "t1", "Differenz", "Differenz"),
                      Gruppe = c("Group A", "Group B", "Group A", "Group B", "Group A", "Group B"),
                      Mean = c(68.00, 62.00, 69.00, 47.00, 5.00, 20.00),
                      SD = c(17.00, 18.00, 11.00, 14.00, 8.00, 14.00)
)

df_alt2_flextable <- flextable(df_alt2)
df_alt2_flextable <- width(df_alt2_flextable, j = "Gruppe", width = 1.0)
df_alt2_flextable = fontsize(df_alt2_flextable, size = 6, part = "all") 
df_alt2_flextable <- set_table_properties(df_alt2_flextable, width = 0.5, layout = "autofit")

set_flextable_defaults(border.color = "black", border.width = 0.05)
save_as_image(df_alt2_flextable, "Einheit_2_MC_3_c.png")

# Alternative 3
df_alt3 <- data.frame(Zeit = c("t0", "t0", "t1", "t1", "Diff", "Diff"),
                      Kategorie = c("No Treatment", "Treatment", "No Treatment", "Treatment", "No Treatment", "Treatment"),
                      Avg = c(66.79, 66.75, 66.81, 55.32, 64.43, 48.88),
                      StdDev = c(18.44, 19.03, 18.14, 17.08, 12.66, 16.92)
)

df_alt3_flextable = flextable(df_alt3)
df_alt3_flextable = italic(df_alt3_flextable, j = ~ Avg + StdDev, part = "header")
df_alt3_flextable = fontsize(df_alt3_flextable, size = 6, part = "all")  
df_alt3_flextable = width(df_alt3_flextable, j = "Kategorie", width = 1.0)
df_alt3_flextable = set_table_properties(df_alt3_flextable, width = 0.5, layout = "autofit")

set_flextable_defaults(border.color = "black", border.width = 0.05)
save_as_image(df_alt3_flextable, "Einheit_2_MC_3_d.png")