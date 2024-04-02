#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

sketchybar --set "$NAME" background.drawing="on"
if [ "$SELECTED" = "true" ]; then
	sketchybar --set "$NAME" background.color=0xFFFFFFFF icon.color=0xFF333333
else
	sketchybar --set "$NAME" background.color=0x88FFFFFF icon.color=0x88333333
fi
