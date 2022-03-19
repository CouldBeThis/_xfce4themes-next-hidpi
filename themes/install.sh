#!/bin/bash

echo "Installing themes for all users (root)"

cp -r slimline-2022 /usr/share/themes/2022-slimline

cp -r Trench-2022 /usr/share/themes/2022-Trench

xfwm4-settings & 
