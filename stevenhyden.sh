#!/bin/bash
set -x
#Steven Hyden interactive bash resume

PS3=$(echo -e "\nPlease enter your choice: ")
options=("Introduction" "Contact Details" "Skills" \
         "Training" "Environment Experience" \
         "Work Experience" "Entire Resume"  "Quit")
bd=$(dirname "$0")
d=${bd}/text
dump='less -R -j1'
#s=$(source $d/introtest)

echo -e "\n"
echo -e "			        \033[1;34mSteven Hyden\033[0m"
echo -e "\n"
echo -e "\033[1mHello!\033[0m And thank you for taking this script, and my employment into consideration."
echo -e "\n"
echo -e "\033[4mPlease choose one of the following options to navigate through my resume.\033[0m \n 
\033[4mAfter selecting an option and surveying its contents, push 'q' to return to the selection prompt.\033[0m"
echo -e "\n"

select opt in "${options[@]}"
do
    case $opt in
        "Introduction")
             echo -e $(cat $d/introtest) | $dump
            ;;
        "Contact Details")
             echo -e $(cat $d/contact) | $dump
            ;;
        "Skills")
             $d/skills.sh | $dump
            ;;
        "Training")
             $d/training.sh | $dump
            ;;
        "Environment Experience")
            $d/environment.sh | $dump
            ;;
        "Work Experience")
            $d/experience.sh | $dump
            ;;
        "Entire Resume")
            $d/entire.sh
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
