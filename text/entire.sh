#!/bin/bash

######ENTIRERESUME######

bd=$(dirname "$0")
d=${bd}

for option in $d/contact.sh $d/intro.sh $d/environment.sh $d/skills.sh $d/training.sh $d/experience.sh;
  do $option >&1;
done | less -Rj1
