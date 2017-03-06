#!/bin/bash

######ENTIRERESUME######

d=./text

#$d/contact.sh;
#$d/intro.sh;
#$d/environment.sh;
#$d/skills.sh;
#$d/training.sh;
#$d/experience.sh;

for option in $d/contact.sh $d/intro.sh $d/environment.sh $d/skills.sh $d/training.sh $d/experience.sh;
  do $option >> /tmp/full.res;
done
less -Rj1 /tmp/full.res; wait;
rm -f /tmp/full.res
