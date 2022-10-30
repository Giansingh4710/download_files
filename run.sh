#!/bin/bash

#py ./code/gv.py ./  "https://gurmatveechar.com/audio.php?q=f&f=%2FGurbani_Ucharan%2FKabaal_Singh_%28Hazoor_Sahib_wale%29%2FSri_Dasam_Granth_Sahib_%28Hazoor_Sahib_Bir%29"
#py ./code/akjorg.py ./ "Bhai Harpreet Singh" "Giaan Singh"
#py ./code/goldenKhajan.py ./BobJones "http://sikhsoul.com/golden_khajana/index.php?q=f&f=%2FKeertan%2FBhai+Amolak+Singh"
#../yt-dl/win/youtube-dl.exe --extract-audio --audio-format mp3 "https://www.youtube.com/watch?v=DutadE8psQs"

PS3="Enter the Number: "
select opt in "GurmatVeechar" "AKJ.org" "GoldenKhajana" "YouTube/SoundCloud etc";do 
  if [[ $opt == "GurmatVeechar" ]];then
    echo GV babayyyy
  else if [[ $opt == "AKJ.org" ]];then
    echo AKJ
  fi
done

sleep 5

