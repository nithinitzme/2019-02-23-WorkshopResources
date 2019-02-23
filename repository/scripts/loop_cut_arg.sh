#$1  $2 $3 are options for cut
#$4 is number of lines for head
#$5 is sort options
echo "Columns for cut: $1 $2 $3"
echo "Number for head: $4"
echo "Options for sort: $5"

#this loop runs on files starting from U-Z
for gapminderfile in [U-Z]*.txt
do
    echo $gapminderfile  #ouput filename to the screen
    cut -f "$1,$2,$3" $gapminderfile | sort -$5 | head -$4
done
