#!/bin/bash

# Check if kitty is running
if pgrep -x "kitty" > /dev/null
then
    # Kitty is running, open a new subwindow
    kitten @ --to unix:/tmp/kitty.sock launch --type=os-window --cwd=~
else
    # Kitty is not running, start a new kitty instance
    kitty --listen-on unix:/tmp/kitty.sock --directory ~
fi