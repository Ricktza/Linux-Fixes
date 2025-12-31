#!/bin/bash
# My Winter Car - G29 Axis Correction Script

# Steam startup params
# ~/scripts/MSC-MWC.sh && game-performance %command%
DEVICE="/dev/input/by-id/usb-Logitech_G29_Driving_Force_Racing_Wheel-event-joystick"

# Steering (Symmetric range for 1:1 feel)
evdev-joystick --e "$DEVICE" -a 0 -m -65535 -M 65535 --deadzone 0

# Pedals (Fixes the 30% "wonky" reset issue)
# Ingame, normalisation enabled + invert.
evdev-joystick --e "$DEVICE" -a 1 -m -255 -M 255 --deadzone 0 
evdev-joystick --e "$DEVICE" -a 2 -m -255 -M 255 --deadzone 0 
evdev-joystick --e "$DEVICE" -a 5 -m -255 -M 255 --deadzone 0

echo "MWC G29 Profile Applied: Symmetric Axes Active."


# evdev-joystick - linuxconsole
