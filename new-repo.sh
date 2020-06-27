#!bin/bash

if [ $# -ne 1 ]; then
  exit 1
fi

WORK_SPACE=~/ws
DIR_NAME=$1

if [ -z $DIR_NAME ]; then
  exit 1
fi

mkdir $WORK_SPACE/$DIR_NAME
cd $WORK_SPACE/$DIR_NAME

if [ -z .git ]; then
  git init
fi

if [ -z README.md ]; then
  touch README.md
  echo -e "# Overview\n\n# How to run \n" >> README.md
  git add README.md
  git commit -m "first commit"
  hub create
  git push origin master
fi

hub browse
code .

# create dir in ws directory
#mkdir WORK_SPACE/DIR_NAME
#cd WORK_SPACE/DIR_NAME

# git init
#git init

# add README using template
#touch README.md
#echo "# Overview \n # How to start \n" >> README.md

# first commit
#git commit -m "first commit"

# hub create
#hub create 

# hub push
#hub push

# open dir in visual studio code
#open vs WORK_SPACE/DIR_NAME


