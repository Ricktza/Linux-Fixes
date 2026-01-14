#!/bin/bash
# Winwing Ursa Minor Fighter Flight Stick R - Precision Profile

DEVICE="/dev/input/by-id/usb-Winwing_WINWING_URSA_MINOR_FIGHTER_FLIGHT_STICK_R_31D3E45D8751403114F62072-event-joystick"

if [ -e "$DEVICE" ]; then
    evdev-joystick -s "$DEVICE" -a 0 --deadzone 255  # X Axis (Roll)
    evdev-joystick -s "$DEVICE" -a 1 --deadzone 255  # Y Axis (Pitch)
    evdev-joystick -s "$DEVICE" -a 2 --deadzone 255  # Z Axis (Twist/Yaw)

    echo "Winwing Ursa Minor Profile Applied: High Precision Center."
else
    echo "Warning: Winwing Ursa Minor not found at $DEVICE"
fi
