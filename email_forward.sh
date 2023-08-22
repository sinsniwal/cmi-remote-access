#!/bin/bash

read -p "Enter email address to forward to: " email

echo $email >>~/.forward
