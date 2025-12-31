#!/bin/bash
# My Winter Car - G29 Axis Correction Script

DEVICE="/dev/input/by-id/usb-Logitech_G29_Driving_Force_Racing_Wheel-event-joystick"

# Steering (Symmetric range for 1:1 feel)
evdev-joystick --e "$DEVICE" -a 0 -m -65535 -M 65535 --deadzone 0

# Pedals (Fixes the 30% "wonky" reset issue)
evdev-joystick --e "$DEVICE" -a 1 -m -255 -M 255 --deadzone 0 # Clutch
evdev-joystick --e "$DEVICE" -a 2 -m -255 -M 255 --deadzone 0 # Gas
evdev-joystick --e "$DEVICE" -a 5 -m -255 -M 255 --deadzone 0 # Brake

echo "MWC G29 Profile Applied: Symmetric Axes Active."
