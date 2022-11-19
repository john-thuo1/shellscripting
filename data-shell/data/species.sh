echo "In File " $1
cut -d "," -f 2 $1| sort | uniq

