#!/bin/bash
# G29 Factory Default Reset

DEVICE="/dev/input/by-id/usb-Logitech_G29_Driving_Force_Racing_Wheel-event-joystick"

# Reset Steering to default 0-65535
evdev-joystick --e "$DEVICE" -a 0 -m 0 -M 65535

# Reset Pedals to default 0-255
evdev-joystick --e "$DEVICE" -a 1 -m 0 -M 255
evdev-joystick --e "$DEVICE" -a 2 -m 0 -M 255
evdev-joystick --e "$DEVICE" -a 5 -m 0 -M 255

echo "G29 Profile Reset: Standard Axes Active."
