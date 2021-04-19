#!/bin/bash

extract_string(){
  awk -v pattern="  \"${1}" 'BEGIN{FS="\":"} $1 ~ pattern {print $2}' tmp | sed 's/\"//g' | sed 's/,$//' | sed 's/^ //'
}

curl -s https://api.github.com/users/aszx87410 | egrep "\"name|bio|location|blog" > tmp

name=$(extract_string "name")
blog=$(extract_string "blog")
location=$(extract_string "location")
bio=$(extract_string "bio")

rm tmp

echo $name
echo $bio
echo $location
echo $blog
