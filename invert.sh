figlet INVERT PDF 
#print invert pdf 
echo started  
#print started
pdftocairo -png -r 300 "$1" img
#converts pdf to img (png) using pdftocairo
echo image extraction done
#print extraction done
convert img*.png -channel RGB -negate invert.png
#invert image using  imagemagick
echo image inverted
#print image inverted
rm img-*.png
#delete extracted image
echo png deleted
#print deleted png
img2pdf invert-*.png  -o inverted.pdf
#convert image to pdf using img2pdf
echo pdf created 
#print pdf created
rm invert-*.png
#delete inverted png
echo all png deleted check output
#print png deleted
evince inverted.pdf
#lunch inverted using evince 









