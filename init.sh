echo "Fire it up"

while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-38));echo `date` ${SECONDS};tput rc;done

echo "I got here again, again"