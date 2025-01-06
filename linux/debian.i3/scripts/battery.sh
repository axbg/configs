#!/bin/bash

# Extract battery information
battery_info=$(acpi -b | awk '{print $4 " (" $3 ") " $5}' | sed 's/,//g')
battery_percentage=$(acpi -b | awk '{print $4}' | sed 's/%,//')

# Display the battery information
echo "$battery_info"

# Empty line for the tooltip
echo ""

# Determine the color based on the battery percentage
if [ "$battery_percentage" -gt 50 ]; then
    echo "#00FF00"  # Green for >50%
elif [ "$battery_percentage" -gt 20 ]; then
    echo "#FFFF00"  # Yellow for 20%-50%
else
    echo "#FF0000"  # Red for <20%
fi
