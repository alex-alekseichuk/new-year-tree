#!/usr/bin/env bash
# New Year tree in console
# E.g., \e[1;31m is the escape string to set red color.
# colors:
# reset = 0, black = 30, red = 31, green = 32, yellow = 33, blue = 34, magenta = 35, cyan = 36, and white = 37
# bg:
# reset = 0, black = 40, red = 41, green = 42, yellow = 43, blue = 44, magenta = 45, cyan = 46, and white=47

reset='\e[1;0m'
yellow='\e[1;33m'
blue='\e[1;34m'
green='\e[1;32m'
red='\e[1;31m'
cyan='\e[1;36m'

function top()
{
    echo -e $yellow"$1"$reset
}

function line()
{
    line=$1
    line=${line//>/$green>}
    line=${line//</$green<}
    line=${line//@/$red@}
    line=${line//o/${cyan}o}
    line=${line//O/${blue}O}
    line=${line//\*/${yellow}\*}
    echo -e "$line"$reset
}

top  '        |'
top  '       \|/'
top  '      --*--'
line '       >o<'
line '      >0<<<'
line '     >>o>>*<'
line '    >o<<<o<<<'
line '   >>@>*<<O<<<'
line '  >o>>@>>>o>o<<'
line ' >*>>*<o<@<o<<<<'
line '>o>o<<<O<*>>*>>O<'
echo '   _ __| |__ _'
