#!/bin/bash

#Steven Hyden interactive bash resume

PS3=$(echo -e "\nPlease enter your choice: ")
options=("Introduction" "Contact Details" "Skills" \
         "Training" "Environment Experience" \
         "Work Experience" "Entire Resume"  "Quit")
inc=./text
dump='less -R -j1'

echo -e "\n"
echo -e "			        \033[1;36mSteven Hyden\033[0m"
echo -e "\n"
echo -e "\033[1mHello!\033[0m And thank you for taking this script, and my employment into consideration."
echo -e "\n"
echo -e "\033[4mPlease choose one of the following options to navigate through my resume.\033[0m \n 
\033[4mAfter selecting an option, and surveying its contents, push 'q' to return to the selection prompt.\033[0m"
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
        "Entire Resume")
            $inc/entire.sh
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
