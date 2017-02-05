#!/bin/bash

grep -q closed /proc/acpi/button/lid/LID0/state
if [ $? = 0 ] 
then
  ## The laptop lid is closed.
  ## Let's find out if it's plugged in.
  grep -q 0 /sys/class/power_supply/ADP0/online  
  if [ $? = 0 ]
  then
    ## The laptop is not plugged in. It should be asleep.
    systemctl suspend
  fi
fi
