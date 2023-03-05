#! /bin/bash

# print pi

uptime -p

vcgencmd measure_temp
vcgencmd measure_volts
vcgencmd measure_clock arm
