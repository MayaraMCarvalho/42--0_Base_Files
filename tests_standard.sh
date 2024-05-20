# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    tests_standard.sh                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: macarval <macarval@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/30 11:03:02 by macarval          #+#    #+#              #
#    Updated: 2024/05/14 15:32:12 by macarval         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

# Run tests for CPP-06 -ex01
# Usage: make test -OU- make && ./run_test.sh

# Colors
red='\033[31;1m'
blue='\033[36;1m'
green='\033[32;1m'
yellow='\033[33;1m'
purple='\033[35;1m'
gray='\033[37;1m'
reset='\033[0m'

# Caminho para o executável do seu programa em C
PROGRAM="./btc"

comp="make re && clear"

$comp
clear

echo
echo  "${blue}---------------------------------------------------------------"
echo  "************************* FILES TEST **************************"
echo  "---------------------------------------------------------------"
echo  "${blue}No argument test.."
echo  "---------------------------------------------------------------${reset}"

# Test with no argument
echo  "${yellow}${PROGRAM}${reset}"
${PROGRAM}

echo  "${blue}---------------------------------------------------------------"
echo  "Invalid input tests..."
echo  "---------------------------------------------------------------${reset}"

# Test with invalid inputs
echo  "${yellow}${PROGRAM} files/empty.txt ${reset}"
${PROGRAM} "files/empty.txt"

echo  "${yellow}\n${PROGRAM} files/header1.txt${reset}"
${PROGRAM} "files/header1.txt"

echo  "${yellow}\n${PROGRAM} files/header2.txt${reset}"
${PROGRAM} "files/header2.txt"

echo  "${blue}---------------------------------------------------------------"
echo  "Valid input tests..."
echo  "---------------------------------------------------------------${reset}"

# Test with invalid inputs
echo  "${yellow}${PROGRAM} input.txt ${reset}"
${PROGRAM} "input.txt"

echo  "${blue}\n---------------------------------------------------------------"
echo  "Tests finished..."
echo  "---------------------------------------------------------------${reset}"
