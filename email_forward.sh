#!/bin/bash

read -p "Enter email address to forward to: " email </dev/tty

echo $email >>~/.forward
