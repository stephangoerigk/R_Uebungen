
## Einheit 3

jpeg(file = "Einheit_3_1.png", width = 5, height = 5, units = "in", res = 300)

ggplot(data = smartphone, aes(x = GPS_diff, y = SAS_diff, color = groups)) +
  geom_point(size = 1) +
  geom_smooth(method = "lm", se = FALSE, aes(group = groups), linetype = "solid") + 
  labs(x = "Improvement Procrastination", y = "Improvement Addiction", color = "") +
  scale_color_manual(values = c("No Training" = "#d01c8b", "Training" = "#4dac26")) +
  theme_bw() +
  theme(
    legend.position = "bottom", 
    legend.box = "horizontal",
    panel.grid.major = element_blank(), 
    panel.grid.minor = element_blank(), 
    panel.border = element_blank(), 
    axis.line = element_line() 
  )

dev.off()


jpeg(file = "Einheit_3_2.png", width = 5, height = 5, units = "in", res = 300)

ggplot(data = smartphone, aes(x = groups, y = SAS_diff)) +
  geom_boxplot() +
  labs(x = "", y = "Improvement Addiction") +
  theme_bw() +
  theme(
    legend.position = "none",  # Legende ausblenden
    panel.grid.major = element_blank(), 
    panel.grid.minor = element_blank(), 
    panel.border = element_blank(), 
    axis.line = element_line() 
  )

dev.off()