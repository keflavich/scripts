#!/bin/sh

BATTERY_LOG=/Users/adam/logs/battery.log
date +%s >> $BATTERY_LOG
/usr/sbin/ioreg -l | grep \"CycleCount\" | sed -e 's/^[ |]*//' -e 's/\"//g' >> $BATTERY_LOG
/usr/sbin/ioreg -l | egrep "(Max|Current|Design)Capacity" | sed -e 's/^[ |]*//' -e 's/\"//g' >> $BATTERY_LOG
