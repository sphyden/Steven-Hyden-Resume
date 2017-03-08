#!/bin/bash

######ENTIRERESUME######

bd=$(dirname "$0")
d=${bd}

for option in $d/contact $d/intro $d/environment $d/skills $d/training $d/experience;
  do echo -e $(cat $option) >&1;
done | less -Rj1
