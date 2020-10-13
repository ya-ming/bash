#!/bin/bash
echo Just '|' ---------------------------------------
find /etc -name grub | grep grub
echo Doing '2>&1 |' ---------------------------------------
find /etc -name grub 2>&1 | grep grub
echo Doing '|&' ---------------------------------------
find /etc -name grub |& grep grub
