#!/bin/bash

grep -rnw '.' -e "$1" | lolcat
