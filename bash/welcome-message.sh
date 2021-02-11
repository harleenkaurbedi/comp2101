#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
echo "what is your name?"
read USER


hostname=$(hostname)

day=$(date +"%A")
date=$(date +"%I:%M:%S %p")

if [ $day == "Monday" ]
then
	title="Monday might by sunny"
elif [ $day == "Tuesday" ]
then
	title="Tuesday might by rainy"
elif [ $day == "Wednesday" ]
then
	title="Wednesday might by colder"
elif [ $day == "Thursday" ]
then
	title="Thursday might be cloudy"
elif [ $day == "Friday" ]
then
	title="Friday might be colder"
elif [ $day == "Saturday" }
then
	title="Saturday might be snow"
else
	title="Sunday is chill"
fi
 

###############
# Main        #
###############
cat <<EOF

Welcome to planet $hostname, "$title $USER!"
It is $day at $date.

EOF
