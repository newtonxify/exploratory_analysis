## Plot 1
hist(my_data$Global_active_power,main="Global Active Power",
     xlab = "Global Active Power (kilowatts)", col="red")

## Save graph as png
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()