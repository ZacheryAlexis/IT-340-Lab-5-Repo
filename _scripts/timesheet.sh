#!/bin/bash



# Define script directory

SCRIPT_DIR="/home/developers/Lab_5_workspace/_scripts"
LOG_DIR="$SCRIPT_DIR/logs"
LOG_FILE="$LOG_DIR/timesheet.log"

mkdir -p "$LOG_DIR"

# Prompt for user information

echo "First Name: "

read fname



echo "Last Name: "

read lname



echo "Number of Hours Worked: "

read hours



echo "Description of Work: "

read description



# Display confirmation (optional)

echo ""

echo "Timesheet Entry Created:"

echo "Name: $fname $lname"

echo "Hours Worked: $hours"

echo "Work Description: $description"   


{
    echo "============================================"
    echo "Timesheet Entry - $(date "+%Y-%m-%d %H:%M:%S")"
    echo "============================================"
    echo "Name: $fname $lname"
    echo "Hours Worked: $hours"
    echo "Description: $description"
    echo "--------------------------------------------"
    echo ""
} >> "$LOG_FILE"
