echo started 
pdftocairo -png -r 300 "$1" img
echo image extraction done
convert img*.png -channel RGB -negate invert.png
echo image inverted
rm img-*.png
echo png deleted
img2pdf invert-*.png  -o output.pdf
echo pdf created 
rm invert-*.png
echo all png deleted check output
 evince output.pdf









