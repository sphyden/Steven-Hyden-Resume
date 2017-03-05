#!/bin/bash

#Steven Hyden interactive bash resume

PS3='Please enter your choice: '
options=("Introduction" "Contact Details" "Skills" \
         "Training" "Environment Experience" \
         "Work Experience"  "Quit")
inc=./text
dump='less -r'

echo -e "\n"
echo "Hello! And thank you for taking this script, and my employment into consideration."
echo -e "\n"
echo "Please choose one of the following options to navigate through my resume"
echo -e "\n"

select opt in "${options[@]}"
do
    case $opt in
        "Introduction")
             $inc/intro.sh | $dump
            ;;
        "Contact Details")
             $inc/contact.sh | $dump
            ;;
        "Skills")
             $inc/skills.sh | $dump
            ;;
        "Training")
             $inc/training.sh | $dump
            ;;
        "Environment Experience")
            $inc/environment.sh | $dump
            ;;
        "Work Experience")
            $inc/experience.sh | $dump
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
