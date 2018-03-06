# Create images for all Newick files in the directory
find . -name "*.nwk" -exec ../printPhyloNewickTree.R -i {} \;

# Create an image for an individual Newick file with the specified width and height
../printPhyloNewickTree.R -i ./S1C1_5_19H1L.nwk -o tree.png  --width 2.5 --height 2

# Trim the white space around the image and rename the file
convert ./tree.png -trim +repage -bordercolor white -border 1x1 S1C1_5_19H1L.png
