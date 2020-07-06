#!/bin/bash 

shopt -s extglob
#first latter
read -p "enter the name with first capital later:- " fname
path="^[A-Z][a-z]{3,}$"

if [[ $fname =~ $path ]]
then
   echo "valid name"
else
   echo "invalid name"
fi

#last latter
read -p "enter the last name with first capital later:- " lname
path="^[A-Z][a-z]{3,}$"

if [[ $lname =~ $path ]]
then
   echo "valid name"
else
   echo "invalid name"
fi

#email id
read -p "enter Email:- " email

path="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9A-Za-z]+.[a-zA-Z]{2,4}([.][A-Za-z]{2})*$"
if [[ $email =~ $path ]]
then
   echo "valid format"
else
   echo "invalid format"
fi

#mobile number
read -p "mobile number:- " mobno
path="^[1-9]{2} {0,1}[1-9]{1}[0-9]{9}"
if [[ $mobno =~ $path ]]
then
   echo "valid mobile number"
else
   echo "invalid mobile number"
fi

#password
read -p "enter password:- " password

path="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\]).{8,32}$"
if [[ $password =~ $path ]]
then
   echo "valid format"
else
   echo "invalid format"
fi

