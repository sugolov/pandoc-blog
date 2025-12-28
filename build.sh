#!/bin/bash

# Convert all markdown
for f in md/*.md; do
  date=$(head -n 6 $f | grep date | sed "s/\-//g" | grep -o "[0-9]\+")
  pandoc "$f" -s --css=../../styles.css --toc -N -B template/nav.html --mathjax -o "posts/$date/index.html"
done

# Generate index
python3 make.py

cat index_header.html index_list.html index_footer.html > index.html