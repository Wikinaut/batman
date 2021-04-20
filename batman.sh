if [[ $# -ne 3 ]]; then
  echo "Usage:"
  echo "batman 'text-1' 'text-2' outfile"
  exit
else
  convert batman.png -font Dosis-Bold -fill "#1c1a1d" -background "#00000000" -gravity center \
    -size 220x100 caption:"$1" -geometry -121-200 -composite \
    -size 200x100 caption:"$2" -geometry +135-200 -composite \
    "$3"
fi
