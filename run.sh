#!/bin/bash

#python3 ./code/gv.py ./  "https://gurmatveechar.com/audio.php?q=f&f=%2FGurbani_Ucharan%2FKabaal_Singh_%28Hazoor_Sahib_wale%29%2FSri_Dasam_Granth_Sahib_%28Hazoor_Sahib_Bir%29"
#python3 ./code/akjorg.py ./ "Bhai Harpreet Singh" "Giaan Singh"
#python3 ./code/goldenKhajan.py ./BobJones "http://sikhsoul.com/golden_khajana/index.php?q=f&f=%2FKeertan%2FBhai+Amolak+Singh"
#../yt-dl/win/youtube-dl.exe --extract-audio --audio-format mp3 "https://www.youtube.com/watch?v=DutadE8psQs"

PS3="Enter the Number: "
printf "Enter path: "
read -r path
if [ ! -d "$path" ];then
  path="./"
fi
echo $path

IFS=',' # Set comma as delimiter

select opt in "GurmatVeechar" "AKJ.org" "GoldenKhajana" "YouTube/SoundCloud etc";do 
  if [[ $opt == "GurmatVeechar" ]];then
    echo "Enter links from GurmatVeechar.com separated by a comma(,): "
    read -r -a links #Read the split words into an array based on comma delimiter
    python3 ./code/gv.py "$path"  "${links[@]}"
  elif [[ $opt == "AKJ.org" ]];then
    echo "Enter names of Keertani separated by a comma(,): "
    read -r -a names
    python3 ./code/akjorg.py "$path"  "${names[@]}"
  elif [[ $opt == "GoldenKhajana" ]];then
    echo "Enter a link from Golden Khajan: "
    read -r link
    python3 ./code/goldenKhajan.py "$path" "$link"
  elif [[ $opt == "YouTube/SoundCloud etc" ]];then
    echo "Enter a link for youtube-dl: "
    read -r link
    youtube-dl --extract-audio --audio-format mp3 "$link"
  fi
  exit
done

sleep 5

