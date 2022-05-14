## Plot 2
plot(my_data$Global_active_power~my_data$dateTime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

## Save graph as png
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()