#!/bin/bash -x

shopt -s extglob

read -p "enter Email:- " email

path="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9A-Za-z]+.[a-zA-Z]{2,4}([.][A-Za-z]{2})*$"
if [[ $email =~ $path ]]
then
   echo "valid format"
else
   echo "invalid format"
fi
